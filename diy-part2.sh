#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
#优先安装 passwall 源
./scripts/feeds install -a -f -p passwall_packages
./scripts/feeds install -a -f -p passwall_luci
