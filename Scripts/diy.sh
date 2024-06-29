#!/bin/bash

sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
./scripts/feeds update -a

rm -rf   feeds/kenzo/luci-app-homeproxy
rm -rf   feeds/kenzo/homeproxy
rm -rf   feeds/small/sing-box
rm -rf   feeds/small/shadowsocks-rust

./scripts/feeds install -a  
