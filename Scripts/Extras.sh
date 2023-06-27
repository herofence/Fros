#!/bin/bash

#增加主题
echo "CONFIG_PACKAGE_luci-theme-argon=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-design=y" >> .config
echo "CONFIG_PACKAGE_luci-app-argon-config=y" >> .config
echo "CONFIG_PACKAGE_luci-app-design-config=y" >> .config
#增加luci界面
echo "CONFIG_PACKAGE_luci=y" >> .config
echo "CONFIG_LUCI_LANG_zh_Hans=y" >> .config
