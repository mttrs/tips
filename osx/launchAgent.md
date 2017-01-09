# Nginx launch agent setting
## MacOSX with homebrew

http://wiki.summercode.com/running_homebrewed_nginx_with_sudo_on_mac_os_x

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>homebrew.mxcl.nginx</string>
    <key>RunAtLoad</key>
    <true/>
    <key>KeepAlive</key>
    <false/>
    <key>ProgramArguments</key>
    <array>
        <string>/usr/local/opt/nginx/bin/nginx</string>
        <string>-g</string>
        <string>daemon off;</string>
    </array>
    <key>WorkingDirectory</key>
    <string>/usr/local</string>
  </dict>
</plist>
````
```
$ ln -sfv /usr/local/opt/nginx/*.plist /Library/LaunchAgents
$ launchctl load -w /Library/LaunchAgents/homebrew.mxcl.nginx.plist
```
