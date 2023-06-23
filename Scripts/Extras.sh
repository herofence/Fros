#!/bin/bash

#增加主题
echo "CONFIG_PACKAGE_luci-theme-design=y" >> .config
#增加luci界面
echo "CONFIG_PACKAGE_luci=y" >> .config
echo "CONFIG_LUCI_LANG_zh_Hans=y" >> .config
