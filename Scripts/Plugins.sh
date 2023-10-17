#!/bin/bash

#Linkease
git clone --depth=1 --single-branch https://github.com/linkease/istore.git
git clone --depth=1 --single-branch https://github.com/linkease/nas-packages.git
git clone --depth=1 --single-branch https://github.com/linkease/nas-packages-luci.git
#Design Theme
git clone --depth=1 --single-branch --branch "js" https://github.com/papagaye744/luci-theme-design.git
git clone --depth=1 --single-branch https://github.com/gngpp/luci-app-design-config.git
#Argon Theme
git clone --depth=1 --single-branch --branch $(echo $OWRT_URL | grep -iq "lede" && echo "18.06" || echo "master") https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth=1 --single-branch --branch $(echo $OWRT_URL | grep -iq "lede" && echo "18.06" || echo "master") https://github.com/jerrykuku/luci-app-argon-config.git
#Passwall
git clone --depth=1 --single-branch https://github.com/xiaorouji/openwrt-passwall.git
git clone --depth=1 --single-branch https://github.com/xiaorouji/openwrt-passwall-packages.git
#Diskman
git clone --depth=1 --single-branch https://github.com/lisaac/luci-app-diskman.git
#Dockerman
git clone --depth=1 --single-branch https://github.com/lisaac/luci-app-dockerman.git
git clone --depth=1 --single-branch https://github.com/lisaac/luci-lib-docker.git
#upnp
git clone --depth=1 --single-branch https://github.com/msylgj/luci-app-upnp.git
#usb打印服务器
git clone --depth=1 --single-branch https://github.com/Dboykey/luci-app-usb-printer.git
#Hello World
git clone --depth=1 --single-branch https://github.com/fw876/helloworld.git
