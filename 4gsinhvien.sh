#!/bin/bash
bash <(curl -Ls https://raw.githubusercontent.com/AikoXrayR-Project/AikoXrayR-install/master/install.sh)


read -p " ID NODE Cổng 80: " node_id1
  [ -z "${node_id1}" ] && node_id1=0
  
read -p " ID NODE Cổng 443: " node_id2
  [ -z "${node_id2}" ] && node_id2=0
  
    read -p "subdomain80: " subdomain80
  [ -z "$subdomain80" ] && subdomain80="0"

      read -p "subdomain443: " subdomain443
  [ -z "$subdomain443" ] && subdomain443="0"


  

EOF
cat >config.yml <<EOF
Log:
  Level: none 
  AccessPath: # /etc/XrayR/access.Log
  ErrorPath: # /etc/XrayR/error.log
DnsConfigPath: # /etc/XrayR/dns.json
InboundConfigPath: # /etc/XrayR/custom_inbound.json
RouteConfigPath: # /etc/XrayR/route.json
OutboundConfigPath: # /etc/XrayR/custom_outbound.json
ConnetionConfig:
  Handshake: 4 
  ConnIdle: 30 
  UplinkOnly: 2 
  DownlinkOnly: 4 
  BufferSize: 64 
Nodes:
  -
    PanelType: "V2board" 
    ApiConfig:
      ApiHost: "https://4gsinhvien.me"
      ApiKey: "danghoangadmin@4gsinhvien.me"
      NodeID1: 29
      NodeType: V2ray 
      Timeout: 30 
      EnableVless: false 
      EnableXTLS: false 
      SpeedLimit: 0 
      DeviceLimit: 2 
      RuleListPath: # /etc/XrayR/rulelist
    ControllerConfig:
      DisableSniffing: True
      ListenIP: 0.0.0.0 
      SendIP: 0.0.0.0 
      UpdatePeriodic: 60 
      EnableDNS: false 
      DNSType: AsIs 
      EnableProxyProtocol: false 
      EnableFallback: false 
      FallBackConfigs:  
        -
          SNI: 
          Path: 
          Dest: 80 
          ProxyProtocolVer: 0 
      CertConfig:
        CertMode: none 
        CertDomain: "$subdomain80" 
        CertFile: /etc/XrayR/cert/node1.test.com.cert 
        KeyFile: /etc/XrayR/cert/node1.test.com.key
        Provider: alidns 
        Email: test@me.com
        DNSEnv: 
          ALICLOUD_ACCESS_KEY: aaa
          ALICLOUD_SECRET_KEY: bbb
  -
    PanelType: "V2board" 
    ApiConfig:
      ApiHost: "https://4gsinhvien.me"
      ApiKey: "danghoangadmin@4gsinhvien.me"
      NodeID2: 30
      NodeType: V2ray 
      Timeout: 30 
      EnableVless: false 
      EnableXTLS: false 
      SpeedLimit: 0 
      DeviceLimit: 2 
      RuleListPath: # /etc/XrayR/rulelist
    ControllerConfig:
      DisableSniffing: True
      ListenIP: 0.0.0.0 
      SendIP: 0.0.0.0 
      UpdatePeriodic: 60 
      EnableDNS: false 
      DNSType: AsIs 
      EnableProxyProtocol: false 
      EnableFallback: false 
      FallBackConfigs:  
        -
          SNI: 
          Path: 
          Dest: 80 
          ProxyProtocolVer: 0 
      CertConfig:
        CertMode: dns 
        CertDomain2: "$subdomain443" 
        CertFile: /etc/XrayR/abc.crt 
        KeyFile: /etc/XrayR/abc.key
        Provider: cloudflare 
        Email: test@me.com
        DNSEnv: 
          CLOUDFLARE_EMAIL: danghoang1329@gmail.com
          CLOUDFLARE_API_KEY: a640c462d1736165c7cc2075aa843b37a27b2
EOF
sed -i "s|NodeID1:.*|NodeID: ${node_id1}|" ./config.yml
sed -i "s|NodeID2:.*|NodeID: ${node_id2}|" ./config.yml
cd /root
xrayr restart
