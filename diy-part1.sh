#!/bin/bash

# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
#echo 'src-git 1287329 https://github.com/1287329/openwrt-diy' >> feeds.conf.default
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default
#echo 'src-git lienol https://github.com/Lienol/openwrt-package' >> feeds.conf.default
#SSR
git clone https://github.com/fw876/helloworld package/luci-app-ssr-plus
git clone https://github.com/sbwml/luci-app-alist package/luci-app-alist
svn export https://github.com/kiddin9/openwrt-packages/trunk/filebrowser package/filebrowser
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-filebrowser package/luci-app-filebrowser
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome
svn export https://github.com/xiaorouji/openwrt-passwall2/trunk/luci-app-passwall2 package/luci-app-passwall2
