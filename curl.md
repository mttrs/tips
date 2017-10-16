## man
Everything is in man.
```shell
$ man curl
```

## Sample
- **Without option**
```shell
$ curl http://localhost:4567 >/dev/null
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    48  100    48    0     0   8473      0 --:--:-- --:--:-- --:--:-- 12000
```

- **-v, --verbose**
```shell
$ curl -v http://localhost:4567 >/dev/null
* About to connect() to localhost port 4567 (#0)
*   Trying ::1...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0* connected
* Connected to localhost (::1) port 4567 (#0)
> GET / HTTP/1.1
> User-Agent: curl/7.24.0 (x86_64-apple-darwin12.0) libcurl/7.24.0 OpenSSL/0.9.8z zlib/1.2.5
> Host: localhost:4567
> Accept: */*
>
< HTTP/1.1 200 OK
< Content-Type: text/html;charset=utf-8
< Content-Length: 48
< Server: WEBrick/1.3.1 (Ruby/2.1.2/2014-05-08)
< Date: Sun, 16 Nov 2014 12:30:58 GMT
< Connection: Keep-Alive
<
{ [data not shown]
100    48  100    48    0     0   6985      0 --:--:-- --:--:-- --:--:--  9600
* Connection #0 to host localhost left intact
* Closing connection #0
```

- **-H, --header <header>**: You can add multiple headers
[RFC2616](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html)
```shell
$ curl -v --header 'Drink: beer' \
>         --header 'Food: beer' \
>         http://localhost
* About to connect() to localhost port 80 (#0)
*   Trying ::1...
* connected
* Connected to localhost (::1) port 80 (#0)
> GET / HTTP/1.1
> User-Agent: curl/7.24.0 (x86_64-apple-darwin12.0) libcurl/7.24.0 OpenSSL/0.9.8z zlib/1.2.5
> Host: localhost
> Accept: */*
> Drink: beer
> Food: beer
>
< HTTP/1.1 200 OK
< Date: Mon, 17 Nov 2014 23:35:13 GMT
< Server: Apache/2.2.26 (Unix) DAV/2 mod_ssl/2.2.26 OpenSSL/0.9.8za
< Content-Location: index.html.en
< Vary: negotiate
< TCN: choice
< Last-Modified: Wed, 09 Jan 2013 01:09:18 GMT
< ETag: "3605a-2c-4d2d0b628cb80"
< Accept-Ranges: bytes
< Content-Length: 44
< Content-Type: text/html
< Content-Language: en
<
```

- **-I, --head**: (HTTP/FTP/FILE)  Fetch the HTTP-header only! HTTP-servers feature the command HEAD which this uses to get nothing but the header of a document. When used on an FTP or FILE file, curl displays the file size and last modification time only.
```shell
% curl -I "http://localhost:5000"
HTTP/1.1 200 OK
Date: Sun, 10 Jan 2016 09:13:29 GMT
Content-Type: text/html; charset=utf-8
```


- **with Query parameter**: Don't forget to add double quotes(") to the request URL.
```shell
$ curl -v "http://localhost:4567?p=1"
* About to connect() to localhost port 4567 (#0)
*   Trying ::1...
* connected
* Connected to localhost (::1) port 4567 (#0)
> GET /?p=1 HTTP/1.1
> User-Agent: curl/7.24.0 (x86_64-apple-darwin12.0) libcurl/7.24.0 OpenSSL/0.9.8z zlib/1.2.5
> Host: localhost:4567
> Accept: */*
```

- **Cookie**
```shell
$ curl -v --cookie "name=poteto; status=hot" http://localhost:4567
* About to connect() to localhost port 4567 (#0)
*   Trying ::1...
* connected
* Connected to localhost (::1) port 4567 (#0)
> GET / HTTP/1.1
> User-Agent: curl/7.24.0 (x86_64-apple-darwin12.0) libcurl/7.24.0 OpenSSL/0.9.8z zlib/1.2.5
> Host: localhost:4567
> Accept: */*
> Cookie: name=poteto; status=hot
>
```
- **-x, --proxy**: <[protocol://][user@password]proxyhost[:port]>
```shell
$ curl -v -x localhost:9999 'http://mttrs.github.io/'
* About to connect() to proxy localhost port 9999 (#0)
```
or set it as env
```shell
$ export http_proxy=http://localhost:9999
$ curl -v 'http://mttrs.github.io/'
```

- **-u, --user <user:password>**: Basic authentication
```shell
$ curl -v --user mttrs:cool http://localhost:8080
* About to connect() to localhost port 8080 (#0)
*   Trying ::1...
* connected
* Connected to localhost (::1) port 8080 (#0)
* Server auth using Basic with user 'mttrs'
> GET / HTTP/1.1
> Authorization: Basic bXR0cnM6Y29vbA==
> User-Agent: curl/7.24.0 (x86_64-apple-darwin12.0) libcurl/7.24.0 OpenSSL/0.9.8z zlib/1.2.5
> Host: localhost:8080
> Accept: */*
```

- **-X, --request <command>** and **-d, --data, --data-urlencode <data>**: Request type & Sending data
```shell
$ curl -v -X POST -d 'fish=chips' http://localhost
* About to connect() to localhost port 80 (#0)
*   Trying ::1...
* connected
* Connected to localhost (::1) port 80 (#0)
> POST / HTTP/1.1
> User-Agent: curl/7.24.0 (x86_64-apple-darwin12.0) libcurl/7.24.0 OpenSSL/0.9.8z zlib/1.2.5
> Host: localhost
> Accept: */*
> Content-Length: 10
> Content-Type: application/x-www-form-urlencoded

# Send a file
$ cat << EOF > req.json
"{\"fish\":\"chips\"}"
EOF
$ curl -v -X POST -d @req.json -H "Content-Tyep: application/json" http://localhost
```

- **JSON Pretty Print**

Use python module
```shell
# Confirm installing python(>2.6)
% python --version
Python 2.7.10

% curl "https://status.github.com/api.json" | python -m json.tool
{
    "daily_summary": "https://status.github.com/api/daily-summary.json",
    "last_message_url": "https://status.github.com/api/last-message.json",
    "messages_url": "https://status.github.com/api/messages.json",
    "status_url": "https://status.github.com/api/status.json"
}
```

Use [**jq**](https://stedolan.github.io/jq/)
```shell
% curl "https://status.github.com/api.json" | jq .
{
  "status_url": "https://status.github.com/api/status.json",
  "messages_url": "https://status.github.com/api/messages.json",
  "last_message_url": "https://status.github.com/api/last-message.json",
  "daily_summary": "https://status.github.com/api/daily-summary.json"
}
```

curl check for outgoing request
```
~ $ cat << EOF > /tmp/curl-check
> time_namelookup:  %{time_namelookup}\n
> time_connect:  %{time_connect}\n
> time_appconnect:  %{time_appconnect}\n
> time_pretransfer:  %{time_pretransfer}\n
> time_redirect:  %{time_redirect}\n
> time_starttransfer:  %{time_starttransfer}\n
> ------------------------------------------\n
> time_total:  %{time_total}\n
> EOF


# Please change the TEST URL to Google GeoCoder API and Google Timezone API that you want to test.
~ $ curl -w "@/tmp/curl-check" -o /dev/null -s "TEST URL"
```
