#!/bin/bash

# 更新索引
sudo apt-get update

# 安装证书
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    wget

# 换源
echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse" > tmpsrc
echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse" >> tmpsrc
echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse" >> tmpsrc
echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse" >> tmpsrc
sudo cp tmpsrc /etc/apt/sources.list
rm tmpsrc

# 更新索引
sudo apt-get update

# 安装 wine 和 winetricks
sudo apt-get install -y wine winetricks

# 安装 classin
wget https://yuzhenqin.github.io/winetricks-classin/classin.verb
winetricks --verbose ./classin.verb
rm ./classin.verb
