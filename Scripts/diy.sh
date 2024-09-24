#!/bin/bash
 sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
./scripts/feeds update -a
rm -rf feeds/luci/applications/luci-app-openclash
cp -rf feeds/smpackage/luci-app-openclash   feeds/luci/applications/luci-app-openclash

rm -rf feeds/packages/net/*frp*
git clone   -b    v0.42.0-1   https://github.com/kuoruan/openwrt-frp.git package/frp
./scripts/feeds install -a  
