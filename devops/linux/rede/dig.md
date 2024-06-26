# DIG

Obtem DNS para domínio

```bash
dig

; <<>> DiG 9.18.24-0ubuntu0.22.04.1-Ubuntu <<>>
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 12540
;; flags: qr rd ad; QUERY: 1, ANSWER: 22, AUTHORITY: 0, ADDITIONAL: 0
;; WARNING: recursion requested but not available

;; QUESTION SECTION:
;.                              IN      NS

;; ANSWER SECTION:
.                       0       IN      NS      a.root-servers.net.
.                       0       IN      NS      i.root-servers.net.
.                       0       IN      NS      b.root-servers.net.
.                       0       IN      NS      g.root-servers.net.
.                       0       IN      NS      k.root-servers.net.
.                       0       IN      NS      c.root-servers.net.
.                       0       IN      NS      j.root-servers.net.
.                       0       IN      NS      h.root-servers.net.
.                       0       IN      NS      d.root-servers.net.
.                       0       IN      NS      l.root-servers.net.
.                       0       IN      NS      e.root-servers.net.
.                       0       IN      NS      f.root-servers.net.
.                       0       IN      NS      m.root-servers.net.
a.root-servers.net.     0       IN      AAAA    2001:503:ba3e::2:30
b.root-servers.net.     0       IN      AAAA    2801:1b8:10::b
c.root-servers.net.     0       IN      AAAA    2001:500:2::c
l.root-servers.net.     0       IN      AAAA    2001:500:9f::42
a.root-servers.net.     0       IN      A       198.41.0.4
b.root-servers.net.     0       IN      A       170.247.170.2
c.root-servers.net.     0       IN      A       192.33.4.12
l.root-servers.net.     0       IN      A       199.7.83.42
m.root-servers.net.     0       IN      A       202.12.27.33

;; Query time: 19 msec
;; SERVER: 172.19.192.1#53(172.19.192.1) (UDP)
;; WHEN: Wed Jun 26 09:20:39 -03 2024
;; MSG SIZE  rcvd: 786
```