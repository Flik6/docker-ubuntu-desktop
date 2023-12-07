#!/bin/bash

# 检查是否以root权限运行
if [ "$EUID" -ne 0 ]; then
  echo "请使用root权限运行此脚本"
  exit 1
fi

# 安装中文语言包
apt-get install -y language-pack-zh-hans

# 设置系统语言为中文
localectl set-locale LANG=zh_CN.UTF-8

# 重新生成locale配置
dpkg-reconfigure --frontend noninteractive locales

echo "系统语言已成功设置为中文，请重新启动系统以使更改生效。"
