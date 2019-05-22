# dig

## Show only answer
```
% dig +noall +answer heroku.com     
heroku.com.		30	IN	A	50.19.85.156
heroku.com.		30	IN	A	50.19.85.154
heroku.com.		30	IN	A	50.19.85.132
```

## Researse lookups
```
% dig -x 50.19.85.156 +noall +answer

; <<>> DiG 9.8.3-P1 <<>> -x 50.19.85.156 +noall +answer
;; global options: +cmd
156.85.19.50.in-addr.arpa. 263	IN	PTR	ec2-50-19-85-156.compute-1.amazonaws.com.
```

## default
```
% dig heroku.com

; <<>> DiG 9.8.3-P1 <<>> heroku.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 16922
;; flags: qr rd ra; QUERY: 1, ANSWER: 3, AUTHORITY: 8, ADDITIONAL: 8

;; QUESTION SECTION:
;heroku.com.			IN	A

;; ANSWER SECTION:
heroku.com.		30	IN	A	50.19.85.156
heroku.com.		30	IN	A	50.19.85.132
heroku.com.		30	IN	A	50.19.85.154

;; AUTHORITY SECTION:
heroku.com.		58802	IN	NS	ns-1253.awsdns-28.org.
heroku.com.		58802	IN	NS	ns3.p19.dynect.net.
heroku.com.		58802	IN	NS	ns1.p19.dynect.net.
heroku.com.		58802	IN	NS	ns2.p19.dynect.net.
heroku.com.		58802	IN	NS	ns4.p19.dynect.net.
heroku.com.		58802	IN	NS	ns-405.awsdns-50.com.
heroku.com.		58802	IN	NS	ns-1538.awsdns-00.co.uk.
heroku.com.		58802	IN	NS	ns-975.awsdns-57.net.

;; ADDITIONAL SECTION:
ns1.p19.dynect.net.	83793	IN	A	208.78.70.19
ns2.p19.dynect.net.	83636	IN	A	204.13.250.19
ns3.p19.dynect.net.	83727	IN	A	208.78.71.19
ns4.p19.dynect.net.	83727	IN	A	204.13.251.19
ns-405.awsdns-50.com.	150222	IN	A	205.251.193.149
ns-975.awsdns-57.net.	86304	IN	A	205.251.195.207
ns-1253.awsdns-28.org.	83990	IN	A	205.251.196.229
ns-1538.awsdns-00.co.uk. 83609	IN	A	205.251.198.2

;; Query time: 34 msec
;; SERVER: 192.168.3.1#53(192.168.3.1)
;; WHEN: Thu Jan  5 16:54:39 2017
;; MSG SIZE  rcvd: 424
```

## +[no]trace
Toggle tracing of the delegation path from the root name servers for the name being looked up.
```
% dig +trace heroku.com

; <<>> DiG 9.8.3-P1 <<>> +trace heroku.com
;; global options: +cmd
.			96903	IN	NS	g.root-servers.net.
.			96903	IN	NS	k.root-servers.net.
.			96903	IN	NS	l.root-servers.net.
.			96903	IN	NS	f.root-servers.net.
.			96903	IN	NS	j.root-servers.net.
.			96903	IN	NS	i.root-servers.net.
.			96903	IN	NS	d.root-servers.net.
.			96903	IN	NS	c.root-servers.net.
.			96903	IN	NS	a.root-servers.net.
.			96903	IN	NS	b.root-servers.net.
.			96903	IN	NS	m.root-servers.net.
.			96903	IN	NS	e.root-servers.net.
.			96903	IN	NS	h.root-servers.net.
;; Received 436 bytes from 192.168.3.1#53(192.168.3.1) in 95 ms

com.			172800	IN	NS	d.gtld-servers.net.
com.			172800	IN	NS	j.gtld-servers.net.
com.			172800	IN	NS	f.gtld-servers.net.
com.			172800	IN	NS	b.gtld-servers.net.
com.			172800	IN	NS	k.gtld-servers.net.
com.			172800	IN	NS	i.gtld-servers.net.
com.			172800	IN	NS	g.gtld-servers.net.
com.			172800	IN	NS	a.gtld-servers.net.
com.			172800	IN	NS	m.gtld-servers.net.
com.			172800	IN	NS	e.gtld-servers.net.
com.			172800	IN	NS	h.gtld-servers.net.
com.			172800	IN	NS	l.gtld-servers.net.
com.			172800	IN	NS	c.gtld-servers.net.
;; Received 488 bytes from 199.7.91.13#53(199.7.91.13) in 880 ms

heroku.com.		172800	IN	NS	ns1.p19.dynect.net.
heroku.com.		172800	IN	NS	ns3.p19.dynect.net.
heroku.com.		172800	IN	NS	ns2.p19.dynect.net.
heroku.com.		172800	IN	NS	ns4.p19.dynect.net.
heroku.com.		172800	IN	NS	ns-405.awsdns-50.com.
heroku.com.		172800	IN	NS	ns-975.awsdns-57.net.
heroku.com.		172800	IN	NS	ns-1538.awsdns-00.co.uk.
heroku.com.		172800	IN	NS	ns-1253.awsdns-28.org.
;; Received 344 bytes from 192.48.79.30#53(192.48.79.30) in 382 ms

heroku.com.		30	IN	A	50.19.85.156
heroku.com.		30	IN	A	50.19.85.132
heroku.com.		30	IN	A	50.19.85.154
heroku.com.		86400	IN	NS	ns-1253.awsdns-28.org.
heroku.com.		86400	IN	NS	ns-1538.awsdns-00.co.uk.
heroku.com.		86400	IN	NS	ns-405.awsdns-50.com.
heroku.com.		86400	IN	NS	ns-975.awsdns-57.net.
heroku.com.		86400	IN	NS	ns1.p19.dynect.net.
heroku.com.		86400	IN	NS	ns2.p19.dynect.net.
heroku.com.		86400	IN	NS	ns3.p19.dynect.net.
heroku.com.		86400	IN	NS	ns4.p19.dynect.net.
;; Received 296 bytes from 205.251.196.229#53(205.251.196.229) in 35 ms
```

dig can connect to whatever resolver you want to via @. When there are any discrepancies, adding resolver would help.

```
dig domain @1.1.1.1 # Cloudflare
dig domain @8.8.8.8 # Google Public DNS
dig domain @208.67.220.220 # Cisco/OpenDNS
```
