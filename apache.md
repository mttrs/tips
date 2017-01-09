```shell
# Allows you to add more Github repos to the list of formulae
$ brew tap homebrew/dupes
$ brew tap homebrew/apache

$ brew install httpd24

$ ln -sfv $(brew --prefix httpd24)/homebrew.mxcl.httpd24.plist ~/Library/LaunchAgents
$ launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.httpd24.plist
$ ls -l ~/Library/LaunchAgents/homebrew.mxcl.httpd24.plist
lrwxr-xr-x  1 user  INTRA\Domain Users  50 Nov 17 20:13 /Users/mttrs/Library/LaunchAgents/homebrew.mxcl.httpd24.plist -> /usr/local/opt/httpd24/homebrew.mxcl.httpd24.plist
````

If you face to the problem, edit httpd.conf
```shell
$ apachectl start
httpd: Could not reliably determine the server's fully qualified domain name, using mttrs.local. Set the 'ServerName' directive globally to suppress this message

$ cat /usr/local/etc/apache2/2.4/httpd.conf
ServerName mttrs.local:8080
```
