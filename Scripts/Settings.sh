#!/bin/bash
#删除dnsmasq插件
#rm -rf -v $(find ./ -name "dnsmasq*")
#rm -rf -v $(find ./ -type d 'dnsmasq*')
#删除冲突插件
rm -rf -v $(find ./feeds/luci/ -type d -regex ".*\(argon\|design\).*")
#修改默认主题
sed -i "s/luci-theme-bootstrap/luci-theme-$OWRT_THEME/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")
#修改默认IP地址
sed -i "s/192\.168\.[0-9]*\.[0-9]*/$OWRT_IP/g" ./package/base-files/files/bin/config_generate
#修改默认主机名
sed -i "s/hostname='.*'/hostname='$OWRT_NAME'/g" ./package/base-files/files/bin/config_generate
#修改默认时区
sed -i "s/timezone='.*'/timezone='CST-8'/g" ./package/base-files/files/bin/config_generate
sed -i "/timezone='.*'/a\\\t\t\set system.@system[-1].zonename='Asia/Shanghai'" ./package/base-files/files/bin/config_generate
