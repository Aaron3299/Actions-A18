#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# 修改openwrt登陆地址,把下面的192.168.9.1修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.9.1/g' package/base-files/files/bin/config_generate
#修改机器名称
sed -i 's/Openwrt/A18/g' package/base-files/files/bin/config_generate
#活动连接数
sed -i 's/16384/65536/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
#删除部分插件
#rm -rf package/lean/luci-app-netdata
#rm -rf package/lean/luci-theme-argon
#rm -rf package/lean/luci-app-uugamebooster
#rm -rf package/lean/luci-app-usb-printer
# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/feeds/luci/luci-app-turboacc/po/zh-cn/turboacc.po
