# Access log
### Sample
```
2014-01-01T00:00:00.000Z mttrs.github.io GET /hello/ HTTP/1.1 200 bytes_sent:11 - Mozilla/4.0 0.0.0.0 response_time:0.001
2014-01-01T00:00:01.000Z mttrs.github.io GET /hallo/ HTTP/1.1 200 bytes_sent:11 - Mozilla/4.0 0.0.0.0 response_time:0.001
2014-01-01T00:00:02.000Z mttrs.github.io GET /gut/ HTTP/1.1 200 bytes_sent:11 - Mozilla/4.0 0.0.0.0 response_time:0.001
```
### Query Per Minutes: QPM
```bash
$ egrep -o '2014-01-01T[0-9]{2}:[0-9]{2}' access.log | sort | uniq -c
```
>  3 2014-01-01T00:00

### QPM TOP 10
```bash
$ egrep -o '2014-01-01T[0-9]{2}:[0-9]{2}' access.log | sort | uniq -c | sort | head
```

### Query Per Seconds: QPS
```bash
$ egrep -o '2014-01-01T[0-9]{2}:[0-9]{2}:[0-9]{2}' access.log | sort | uniq -c
```
> 1 2014-01-01T00:00:00

> 1 2014-01-01T00:00:01

> 1 2014-01-01T00:00:02

### QPS TOP 10
```bash
$ egrep -o '2014-01-01T[0-9]{2}:[0-9]{2}' access.log | sort | uniq -c | sort -n | head
```

