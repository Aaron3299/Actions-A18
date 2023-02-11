#!/bin/bash

# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# File name: diy-part1.sh
#echo 'src-git 1287329 https://github.com/1287329/openwrt-diy' >> feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default
#echo 'src-git https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
#git clone https://github.com/fw876/helloworld package/luci-app-ssr-plus
#git clone https://github.com/sbwml/luci-app-alist package/luci-app-alist
#git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
svn export https://github.com/kiddin9/openwrt-packages/trunk/adguardhome package/diy/adguardhome
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adguardhome package/diy/luci-app-adguardhome
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-dnsfilter package/diy/luci-app-dnsfilter
