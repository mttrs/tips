Everything about ftp is
```
$ man ftp
```

### get remote-file [local-file]
Retrieve the remote-file and store it on the local machine. If the local file name is not specified, it is given the same name it has on the remote machine, subject to alteration by the current case, ntrans, and nmap settings.  The current settings for type, form, mode, and structure are used while transferring the file.
                 
### put local-file [remote-file]
Store a local file on the remote machine. If remote-file is left unspecified, the local file name is used after processing according to any ntrans or nmap settings in naming the remote file.  File transfer uses the current settings for type, format, mode, and structure.
