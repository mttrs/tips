### [UNIX & Linux Command, ShellScript Reference](http://shellscript.sunone.me/)

---

### [LinuxCommand.org](http://linuxcommand.org/index.php)
Learn linux command

---

### [explain shell](http://explainshell.com/)
Write down a command-line to see the help text that matches each argument

---

### Brace Expansion
```
% echo foo.{rb,go}
foo.rb foo.go

# Useful for changing file extention as the same name.
% cp foo.{rb,go}
foo.rb -> foo.go
```

---

### [kill-ring](http://www.linuxtopia.org/online_books/linux_tool_guides/gnu_emacs_manual/Kill-Ring.html)
```Ctrl+u```: Cut all before the cusor and insert it in the kill ring.  
```Ctrl+k```: Cut all after the cusor and insert it in the kill ring.  
```Ctrl+w```: Cut a word before the cusor and insert it in the kill ring.  
```Ctrl+y```: Reinserts the text of the most recent kill.  
```shell
# Ctrl+u
% ls /usr/local/etc(here is cusor)
% 

# Ctrl+k
% ls (here is cusor) /usr/local/etc
% ls

# Ctrl+w
% ls /usr/local/etc
% ls /usr/local/

# Ctrl+y: 'ls /usr/local/' is in kill ring.
%
% ls /usr/local

```

---
### `du` -- Display disk usage statistics
- Display an entry for each specified file
```bash
% du -sh ${fileName}
10M ${filename}
```

---
### `df` -- display free disk space
```bash
% df                                                                                                                         (mitsu/feature/fastSelling/ASA-207|✔)
Filesystem    512-blocks      Used Available Capacity  iused   ifree %iused  Mounted on
/dev/disk1     xxxxxxxxx xxxxxxxxx   xxxxxxx    85%     xxxx      xx   85%   /
devfs                366       366         0   100%      634       0  100%   /dev
map -hosts             0         0         0   100%        0       0  100%   /net
map auto_home          0         0         0   100%        0       0  100%   /home
map -fstab             0         0         0   100%        0       0  100%   /Network/Servers
```

---

### `diff`
```bash
# Bash string difference
# http://stackoverflow.com/questions/454427/bash-string-difference
% diff <(echo $string1) <(echo $string2)
```

---

### `for`
[http://www.cyberciti.biz/faq/bash-for-loop/]
```bash

% ls file*
file1 file2 file3

for i in file{1,2,3}
do
  echo ${i}
done

# file1
# file2
# file3
```

```bash
for (( i=0; i<5; i++ ))
do
  echo 'muhaha'
done
```

---
### `if`
-- Compare string with regular expressions
```bash
#!/bin/sh
if expr "xxx/yyy" : "xxx*" ; then
  echo "Match!"
fi

#!/usr/bin/zsh
if [[ "xxx/yyy" =~ "xxx*" ]]; then
  echo "Match!"
fi
```

---
### `ls`
```bash
# Show only hidden files
% ls -ld .?*

# Show only symlinks
% ls -la | grep '\->'
```

---
### `awk`
-- pattern-directed scanning and processing language
```bash
% sed -n '/startline/,/endline/p' xxx.log | awk '{print $1}' | sort | uniq -c
```
- exp ~ /regexp/
```bash
% awk '$1 ~ /foo/' xxx.log
```
- [ -F fs ] : separator 
```bash
% awk -F':' '{print $1}' xxx.log
```

### `sed`
- Extract specific string
```bash
sed -e 's/patternA\(target\)patternB/\1/'
```

- bulk wording replace
```bash
# Use gsed for mac
% find . -name '*.yml' | xargs sed -i "s/xxx/yyy/g"
```

---
### `gzcat`
-- compression/decompression tool using Lempel-Ziv coding (LZ77)
```bash
% gzcat ${file}
```
---
### `tar`
-- manipulate tape archives
```bash
# Extract to disk from the archive. e.g. xxx.tar
% tar zcvf $file.tar.gz $file

# Compress the resulting archive with gzip(1).
% tar zxvf $file
```

---
### `xargs`
-- [Trim white space](http://stackoverflow.com/questions/369758/how-to-trim-whitespace-from-bash-variable)
```bash
% echo "   muhaha  " | xargs
muhaha
```

---
### `zless`
-- file perusal filter for crt viewing of compressed text
``` bash
% zless xxx.gz
```

---
### See all bindkeys
```bash
% bindkey -L
```
### Stop using the arrow keys and navigate the command line more quickly with
- `ctrl + A`: moves to the start of the line
- `ctrl + E`: moves to the end of the line
- `ctrl + B`: move back one character
- `ctrl + F`: move forward one character

- `esc + B`: move back one word
- `esc + F`: move forward one word
 
Note that Esc, b and Esc, f (back/forward one word) are bound to Opt-b/f (when you set the terminal to recognize Opt as Meta)

---
## [ssh manual](http://www.openssh.com/manual.html), [manual JP](http://www.unixuser.org/~euske/doc/openssh/jman/ssh_config.html)
### [tutorial](http://support.suso.com/supki/SSH_Tutorial_for_Linux)

**sample**
- **Keep Alive**
```shell
% cat .ssh/config

ServerAliveInterval 30
```

- **With PORT, other user**
```shell
% ssh -p1234 -i ~/.ssh/tomato_id_rsa abc@0.0.0.0

Host sample
    HostName 0.0.0.0
    User tomato
    Port 1234
    IdentityFile ~/.ssh/tomato_id_rsa
```

- **proxy command**
```shell
Host sample
    HostName 0.0.0.0
    ProxyCommand ssh -W %h:%p 1.1.1.1
```


### here document
```
% cat << EOF > .gitignore
node_modules
EOF
```

### Confirmation of OS version
```
# ubuntu
% cat /etc/lsb-release
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=16.04
DISTRIB_CODENAME=xenial
DISTRIB_DESCRIPTION="Ubuntu 16.04 LTS"

# centos
% cat /etc/redhat-release
CentOS Linux release 7.2.1511 (Core)

# Architecture type
% arch
i386
```

## Alternatives of depreciated command

### nslookup
-> `dig` or `host`

### `chsh`
-- Change login shell

`% chsh -s /usr/local/bin/zsh`
