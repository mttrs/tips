# [zsh](http://www.zsh.org/)

### Max OSX

#### Install
```bash
$ brew install zsh

$ zsh --version
zsh 5.0.7 (x86_64-apple-darwin14.0.0)

$ which zsh
/usr/local/bin/zsh

$ sudo vi /etc/shells
$ cat /etc/shells
# List of acceptable shells for chpass(1).
# Ftpd will not allow users to connect who are not using
# one of these shells.

/bin/bash
/bin/csh
/bin/ksh
/bin/sh
/bin/tcsh
/bin/zsh
/usr/local/bin/zsh

# Confirm current shell
$ echo $0
-bash

$ chsh -s '/usr/local/bin/zsh'

# Open a new tab/window
% echo $0
-zsh
```
### Use homebrew's path
Set ```/usr/local/bin``` at first.
```bash
% cat /etc/paths
/usr/local/bin
/usr/bin
/bin
/usr/sbin
/sbin
```

### Set zsh as a login shell
```bash
# Confirm the current shell
% cat /etc/shells

# List of acceptable shells for chpass(1).
# Ftpd will not allow users to connect who are not using
# one of these shells.

/usr/local/bin/zsh
/bin/bash
/bin/csh
/bin/ksh
/bin/sh
/bin/tcsh
/bin/zsh

% chpass -s /usr/local/bin/zsh

% chpass -s
Shell: /usr/local/bin/zsh
```
