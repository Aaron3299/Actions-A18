#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part3.sh
# Description: OpenWrt DIY script part 3 (After Install feeds)
#
# 修改openwrt登陆地址,把下面的192.168.9.1修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.9.1/g' package/base-files/files/bin/config_generate

#修改机器名称
sed -i 's/Openwrt/A18/g' package/base-files/files/bin/config_generate

#活动连接数
sed -i 's/16384/65536/g' package/kernel/linux/files/sysctl-nf-conntrack.conf

# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/feeds/luci/luci-app-turboacc/po/zh-cn/turboacc.po

#修改版本信息
sed -i "s/DISTRIB_DESCRIPTION='*.*'/DISTRIB_DESCRIPTION='A18 (build time: $(date +%Y%m%d))'/g"  package/base-files/files/etc/openwrt_release

# ttyd免登陆
sed -i -r 's#/bin/login#/bin/login -f root#g' feeds/packages/utils/ttyd/files/ttyd.config

# 替换golang版本为1.24
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 24.x feeds/packages/lang/golang

# design修改proxy链接
sed -i -r "s#navbar_proxy = 'openclash'#navbar_proxy = 'passwall'#g" feeds/luci/themes/luci-theme-design/luasrc/view/themes/design/header.htm

#删除部分插件
rm -rf package/lean/luci-app-netdata
rm -rf package/lean/luci-theme-argon
rm -rf package/lean/luci-app-uugamebooster
rm -rf package/lean/luci-app-usb-printer
