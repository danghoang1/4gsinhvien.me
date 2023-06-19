bash <(curl -Ls https://speed4g.me/XrayR/install2.sh)

read -p " DOMAIN: " domain
  [ -z "${domain}" ] && domain=0
  
read -p " API KEY: " apikey
  [ -z "${apikey}" ] && apikey=0

read -p " NODE ID 1: " node_id1
  [ -z "${node_id1}" ] && node_id1=0
  
read -p " NODE ID 2: " node_id2
  [ -z "${node_id2}" ] && node_id2=0
rm -rf /etc/XrayR/4gsinhvien.crt
rm -rf /etc/XrayR/4gsinhvien.key
cd /etc/XrayR
cat >4gsinhvien.crt <<EOF
-----BEGIN CERTIFICATE-----
MIIEFTCCAv2gAwIBAgIUBqZxJFKCZM7ykssyyWgxsBcwvHYwDQYJKoZIhvcNAQEL
BQAwgagxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQH
Ew1TYW4gRnJhbmNpc2NvMRkwFwYDVQQKExBDbG91ZGZsYXJlLCBJbmMuMRswGQYD
VQQLExJ3d3cuY2xvdWRmbGFyZS5jb20xNDAyBgNVBAMTK01hbmFnZWQgQ0EgYjUz
N2EzYmM1ZWY3ZGRlYzE1ZTMwZDFkYjY0MmEzMDgwHhcNMjIwODA2MTI0MTAwWhcN
MzIwODAzMTI0MTAwWjAiMQswCQYDVQQGEwJVUzETMBEGA1UEAxMKQ2xvdWRmbGFy
ZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJSEp2z+zSIV8/zfeeCL
deveMmGVrdXSVbZeIOy1994yoNEARZECcNzxsBytkZ+o0BK3HDQ63dj07Z4xnZMO
B6CwEqtZcxbteOmxizKgxE2do+xZdxS5BgZVtzby+cyYHUurpLDRR3X1tRQdN3+w
5h1QDbR3dp/5vMFwIsbU85fDRKD//CCzhfD/fMjccXa6mt3HXyrZqHTkKuO7HDn5
1y7hrdt63H6PpZ3Bwed+KQOGyflLZQeUwDroIYACYQI4OZsWJ1wdrPJaH+sh9VSX
igypa6qs4mZTaaLQp8muWS+uVcO2MYJJJCy8pdICJVzQ0+gHCiKQbKP77Qqiwr5p
KpcCAwEAAaOBuzCBuDATBgNVHSUEDDAKBggrBgEFBQcDAjAMBgNVHRMBAf8EAjAA
MB0GA1UdDgQWBBR3/v0X2f42uTcrAyevdR1ewnMXNzAfBgNVHSMEGDAWgBQzdk4L
SIWDvC1LW701KtYHtybB0zBTBgNVHR8ETDBKMEigRqBEhkJodHRwOi8vY3JsLmNs
b3VkZmxhcmUuY29tLzViOTUzZDk3LTMwMWMtNGQwZC1hODViLWY0MmU1MWE5MmE0
MS5jcmwwDQYJKoZIhvcNAQELBQADggEBAAamFuE52CKEUzV/AjVBLtyEwskYK17I
FX/Fl+EoD9JpuB5gal/tGiP9AeMk1qbWfQaOVP48KKUuuFdXWVB/xOPU54Y8KXS0
ST7cCRfzJRlNzA6fCM6CfS3IO7XmfdS+cqWn1CTzGK4Nj+g6MikqY6C2M9yAW4iA
OWqwFlKGCzYvVYMmPpPrl37vCZgab2BEo7lx6CLu7qYr5cBn2A6TQ9ntaRLgUlLV
wnBnP5eqqcqAAuHmZvWsOr2nT+1xyO0VVbZtk82TWtn8+KdVIP1Wdiy573j8NpzO
1AwjVJrHnfs2re1n/mUs4/HVQVZuwMLuaCF7kIZrPuhJH7p1LvQHBhA=
-----END CERTIFICATE-----
EOF
cat >4gsinhvien.key <<EOF
-----BEGIN PRIVATE KEY-----
MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCUhKds/s0iFfP8
33ngi3Xr3jJhla3V0lW2XiDstffeMqDRAEWRAnDc8bAcrZGfqNAStxw0Ot3Y9O2e
MZ2TDgegsBKrWXMW7XjpsYsyoMRNnaPsWXcUuQYGVbc28vnMmB1Lq6Sw0Ud19bUU
HTd/sOYdUA20d3af+bzBcCLG1POXw0Sg//wgs4Xw/3zI3HF2uprdx18q2ah05Crj
uxw5+dcu4a3betx+j6WdwcHnfikDhsn5S2UHlMA66CGAAmECODmbFidcHazyWh/r
IfVUl4oMqWuqrOJmU2mi0KfJrlkvrlXDtjGCSSQsvKXSAiVc0NPoBwoikGyj++0K
osK+aSqXAgMBAAECggEAEC/xK6EN7KQl5q7Y0s+Ad8fNB/PPcZmuO+VAg2xF6tLr
0jvMWUTB1mMFRerpD1TP8OpCSbMM0QPJDk/sE8YYsLvgHQrvz1Tss9PlDwyUuLzw
y+boYrrT3EblZDjRXypJLyEzHw6AUmwIY3vXu7QlMJa0F7JZnJAUsaSuNauqLSUx
uDqiF72+6Iu5oKmU8kxUxTSbLVCP28I0nPPyDzm6KwO56lZDdaVPPI/ybo9F6O/u
8bm+Ld+0/BhYtv2OvfMZwpclSEqYe6RgKWb0ph/xG/IuONrCCbP676ofU+E//fOn
n7oabShlso2N+TCzXO6SFF7cYSuGjN15ydbDIwohwQKBgQDOQx0JfcAk3ZJhyfke
PW8eviVm3z/y0JII3Ns88BSN97/1JcoJCHEpMRFvw8lm//gQKL5S+6BLaq1/x2tR
tc7qXnuJrmIbZJQ8d4LsGOiqgcHOmyvlwXj/BR/DkBb4Igmefpdk2n/JXKlMBMj0
RtIVvmuzET/sqkpdylWK2XcH9wKBgQC4VOn/IYp0T6Y6IEheu4ZdyMfWm/YiAiVS
C7qG+XrddLUYXM2KY2tUZYzXFcZyFbKkG7edeam8iO7Nd/94HDaSTZhc1Ghbm27O
Watc6jwt2v7Cebtx0md+KT8+05uc3KDAwPRukWSv9/3UDwALSeSLPKzpCji/nKdk
xTW1aRyKYQKBgQCyFbAUacZkDgo89C1qtpAicvnIACkudHYhwM5ppr+Yc7gA6Ueu
1OMfNYZggSJ7E7YR/ZuV+jtD4i86i+tU+SxVno37Kdz62bRDIMyhHECGNtImmEMm
dA0L4liyeM3cH0c+2P3NzflW2fIx+E+o2Ry6OVaznMkchUr//5or7+adsQKBgAd5
2iuwzo69FD7TRFwjOuXe2MwJc0gZ0i2rsBr9T1BgBWBBk0yDj7zSiY3Hok7KNn6V
aTMH1iyBWT4YGdJjQotYfk91he4BNdNEq8CO93Xcpex5R3LsV6o0Pg5sQqlwAU0Q
Blndp7nDUxYgrZ3Hl29WPKUO9xI+ZkOeA/mhk7jBAoGAEqoMsgPDMrqIgWbwD+HI
A2JNCeInSagiXKrqNEdokTjQQ78f1MIeYO8WQdqmVCoi3gJRfK5qyIAGP5xVpo7K
oGT463qBxRavBMrzaL9EZuMHNwga/mgDfFjY0pxDGItp+SxYtT8f0JgnIbbCZ2IX
gnAexGvAah/QWZZvzduv5TI=
-----END PRIVATE KEY-----
EOF
cat >config.yml <<EOF
Log:
  Level: none # Log level: none, error, warning, info, debug 
  AccessPath: # /etc/XrayR/access.Log
  ErrorPath: # /etc/XrayR/error.log
DnsConfigPath: # /etc/XrayR/dns.json # Path to dns config, check https://xtls.github.io/config/dns.html for help
RouteConfigPath: # /etc/XrayR/route.json # Path to route config, check https://xtls.github.io/config/routing.html for help
InboundConfigPath: # /etc/XrayR/custom_inbound.json # Path to custom inbound config, check https://xtls.github.io/config/inbound.html for help
OutboundConfigPath: # /etc/XrayR/custom_outbound.json # Path to custom outbound config, check https://xtls.github.io/config/outbound.html for help
ConnectionConfig:
  Handshake: 4 # Handshake time limit, Second
  ConnIdle: 30 # Connection idle time limit, Second
  UplinkOnly: 2 # Time limit when the connection downstream is closed, Second
  DownlinkOnly: 4 # Time limit when the connection is closed after the uplink is closed, Second
  BufferSize: 64 # The internal cache size of each connection, kB
Nodes:
  -
    PanelType: "V2board" # Panel type: SSpanel, V2board, NewV2board, PMpanel, Proxypanel, V2RaySocks
    ApiConfig:
      ApiHost: "$domain"
      ApiKey: "$apikey"
      NodeID: $node_id1
      NodeType: V2ray # Node type: V2ray, Shadowsocks, Trojan, Shadowsocks-Plugin
      Timeout: 30 # Timeout for the api request
      EnableVless: false # Enable Vless for V2ray Type
      EnableXTLS: false # Enable XTLS for V2ray and Trojan
      SpeedLimit: 0 # Mbps, Local settings will replace remote settings, 0 means disable
      DeviceLimit: 3 # Local settings will replace remote settings, 0 means disable
      RuleListPath: # /etc/XrayR/rulelist Path to local rulelist file
    ControllerConfig:
      DisableSniffing: True
      ListenIP: 0.0.0.0 # IP address you want to listen
      SendIP: 0.0.0.0 # IP address you want to send pacakage
      UpdatePeriodic: 60 # Time to update the nodeinfo, how many sec.
      EnableDNS: false # Use custom DNS config, Please ensure that you set the dns.json well
      DNSType: AsIs # AsIs, UseIP, UseIPv4, UseIPv6, DNS strategy
      EnableProxyProtocol: false # Only works for WebSocket and TCP
      AutoSpeedLimitConfig:
        Limit: 0 # Warned speed. Set to 0 to disable AutoSpeedLimit (mbps)
        WarnTimes: 0 # After (WarnTimes) consecutive warnings, the user will be limited. Set to 0 to punish overspeed user immediately.
        LimitSpeed: 0 # The speedlimit of a limited user (unit: mbps)
        LimitDuration: 0 # How many minutes will the limiting last (unit: minute)
      GlobalDeviceLimitConfig:
        Enable: false # Enable the global device limit of a user
        RedisAddr: 127.0.0.1:6379 # The redis server address
        RedisPassword: YOUR PASSWORD # Redis password
        RedisDB: 0 # Redis DB
        Timeout: 5 # Timeout for redis request
        Expiry: 60 # Expiry time (second)
      EnableFallback: false # Only support for Trojan and Vless
      FallBackConfigs:  # Support multiple fallbacks
        -
          SNI: # TLS SNI(Server Name Indication), Empty for any
          Alpn: # Alpn, Empty for any
          Path: # HTTP PATH, Empty for any
          Dest: 80 # Required, Destination of fallback, check https://xtls.github.io/config/features/fallback.html for details.
          ProxyProtocolVer: 0 # Send PROXY protocol version, 0 for dsable
      CertConfig:
        CertMode: file # Option about how to get certificate: none, file, http, tls, dns. Choose "none" will forcedly disable the tls config.
        CertDomain: "server.4gsinhvien.me" # Domain to cert
        CertFile: /etc/XrayR/4gsinhvien.crt # Provided if the CertMode is file
        KeyFile: /etc/XrayR/4gsinhvien.key
        Provider: cloudflare # DNS cert provider, Get the full support list here: https://go-acme.github.io/lego/dns/
        Email: test@me.com
        DNSEnv: # DNS ENV option used by DNS provider
          CLOUDFLARE_EMAIL: 
          CLOUDFLARE_API_KEY: 
  -
    PanelType: "V2board" # Panel type: SSpanel, V2board, NewV2board, PMpanel, Proxypanel, V2RaySocks
    ApiConfig:
      ApiHost: "$domain"
      ApiKey: "$apikey"
      NodeID: $node_id2
      NodeType: V2ray # Node type: V2ray, Shadowsocks, Trojan, Shadowsocks-Plugin
      Timeout: 30 # Timeout for the api request
      EnableVless: false # Enable Vless for V2ray Type
      EnableXTLS: false # Enable XTLS for V2ray and Trojan
      SpeedLimit: 0 # Mbps, Local settings will replace remote settings, 0 means disable
      DeviceLimit: 3 # Local settings will replace remote settings, 0 means disable
      RuleListPath: # /etc/XrayR/rulelist Path to local rulelist file
    ControllerConfig:
      DisableSniffing: True
      ListenIP: 0.0.0.0 # IP address you want to listen
      SendIP: 0.0.0.0 # IP address you want to send pacakage
      UpdatePeriodic: 60 # Time to update the nodeinfo, how many sec.
      EnableDNS: false # Use custom DNS config, Please ensure that you set the dns.json well
      DNSType: AsIs # AsIs, UseIP, UseIPv4, UseIPv6, DNS strategy
      EnableProxyProtocol: false # Only works for WebSocket and TCP
      AutoSpeedLimitConfig:
        Limit: 0 # Warned speed. Set to 0 to disable AutoSpeedLimit (mbps)
        WarnTimes: 0 # After (WarnTimes) consecutive warnings, the user will be limited. Set to 0 to punish overspeed user immediately.
        LimitSpeed: 0 # The speedlimit of a limited user (unit: mbps)
        LimitDuration: 0 # How many minutes will the limiting last (unit: minute)
      GlobalDeviceLimitConfig:
        Enable: false # Enable the global device limit of a user
        RedisAddr: 127.0.0.1:6379 # The redis server address
        RedisPassword: YOUR PASSWORD # Redis password
        RedisDB: 0 # Redis DB
        Timeout: 5 # Timeout for redis request
        Expiry: 60 # Expiry time (second)
      EnableFallback: false # Only support for Trojan and Vless
      FallBackConfigs:  # Support multiple fallbacks
        -
          SNI: # TLS SNI(Server Name Indication), Empty for any
          Alpn: # Alpn, Empty for any
          Path: # HTTP PATH, Empty for any
          Dest: 80 # Required, Destination of fallback, check https://xtls.github.io/config/features/fallback.html for details.
          ProxyProtocolVer: 0 # Send PROXY protocol version, 0 for dsable
      CertConfig:
        CertMode: file # Option about how to get certificate: none, file, http, tls, dns. Choose "none" will forcedly disable the tls config.
        CertDomain: "server.4gsinhvien.com" # Domain to cert
        CertFile: /etc/XrayR/4gsinhvien.crt # Provided if the CertMode is file
        KeyFile: /etc/XrayR/4gsinhvien.key
        Provider: cloudflare # DNS cert provider, Get the full support list here: https://go-acme.github.io/lego/dns/
        Email: test@me.com
        DNSEnv: # DNS ENV option used by DNS provider
          CLOUDFLARE_EMAIL: 
          CLOUDFLARE_API_KEY: 
EOF
cd /root && xrayr restart && clear && echo -e "   CÃ i Äáº·t HoÃ n Táº¥t!"

