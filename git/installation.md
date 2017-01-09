### [Installing from Source](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git#Installing-from-Source)
- Debian/Ubuntu

```bash
% sudo apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
% sudo apt-get install asciidoc xmlto docbook2x
% tar -zxf git-2.4.1.tar.gz
% cd git-2.4.1
% make configure
% ./configure --prefix=/usr/local
% make all doc info
% sudo make install install-doc install-html install-info

# Confirmation
% git --version
```
