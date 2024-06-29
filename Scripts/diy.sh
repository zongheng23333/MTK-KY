#!/bin/bash
 sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
./scripts/feeds update -a
rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}
rm -rf feeds/smpackage/{luci-app-homeproxy,homeproxy,sing-box,shadowsocks-rust,v2ray-core,v2ray-plugin,v2rayA,Xray-core,xray-plugin}


./scripts/feeds install -a  
