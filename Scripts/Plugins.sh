#!/bin/bash

#luci
git clone --depth=1 --single-branch https://github.com/openwrt/luci.git
#Linkease
git clone --depth=1 --single-branch https://github.com/linkease/istore.git
git clone --depth=1 --single-branch https://github.com/linkease/nas-packages.git
git clone --depth=1 --single-branch https://github.com/linkease/nas-packages-luci.git
#Design Theme
git clone --depth=1 --single-branch --branch $(echo $OWRT_URL | grep -iq "lede" && echo "main" || echo "js") https://github.com/gngpp/luci-theme-design.git
git clone --depth=1 --single-branch https://github.com/gngpp/luci-app-design-config.git
#Argon Theme
git clone --depth=1 --single-branch --branch $(echo $OWRT_URL | grep -iq "lede" && echo "18.06" || echo "master") https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth=1 --single-branch --branch $(echo $OWRT_URL | grep -iq "lede" && echo "18.06" || echo "master") https://github.com/jerrykuku/luci-app-argon-config.git
#Passwall
git clone --depth=1 --single-branch --branch "luci" https://github.com/xiaorouji/openwrt-passwall.git ./pw_luci
git clone --depth=1 --single-branch --branch "packages" https://github.com/xiaorouji/openwrt-passwall.git ./pw_packages
#Diskman
git clone --depth=1 --single-branch https://github.com/lisaac/luci-app-diskman.git
