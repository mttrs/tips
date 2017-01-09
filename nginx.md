## Install
### From the source
- [Install](http://nginx.org/download/nginx-1.9.2.tar.gz): Confrirm the version.

- make
```bash
% tar xzf nginx-1.9.2.tar.gz
% cd nginx-1.9.2
% ./configure \
--prefix=/usr/local \
--conf-path=/etc/nginx/nginx.conf
% make
% sudo make install
```

### brew(Max OSX)
```bash
% brew update
% brew install nginx

# nginx.conf is here
# /usr/local/etc/nginx/nginx.conf
```

## Command
| Operation | command | signal |
|-----------|---------|--------|
| Start | ```sudo nginx``` ||
| Finish | ```sudo nginx -s stop``` | SIGTERM, SIGINT |
| Quit(Graceful fini) | ```sudo nginx -s quit``` | SIGQUIT |
| Reload | ```sudo nginx -s reload``` | SIGHUP |

## nginx.conf
- Confirm that the conf is OK  
```nginx -t```


### Server directive

- Define HTTP server virtual host

```bash
server {
  listen 80;
  server_name www.example.com
}
```

### Location directive

- Process matched path with some conditions

```bash
location /event/ {
  # DO SOMETHING
}
```

### root directive

- Define content's directory
- It can be written in `http context`, `server context` and  `location context`

```
# http://www.example.com/ is root
location / {
  root html;
}

# http:/www.example.com/html/ is root
location /html/ {
  root html;
}
```

### error_page directive

- URL for error page

```bash
error_page 404 @fallback;

location @fallback {
  proxy_pass http://fallback_server;
}
```
