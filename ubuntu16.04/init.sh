#!/bin/bash
# 对ubuntu16.04系统进行初始化
echo "编译安装python3"
echo "安装依赖"
apt-get update 
apt-get install -y wget build-essential libreadline-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev gcc
echo "下载python3.8的压缩包"
wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz
echo "解压压缩包"
tar -zxvf Python-3.8.0.tgz
echo "设置编译选项，设置安装路径为/opt/python38"
cd Python-3.8.0
./configure --prefix=/opt/python38
echo "编译"
make && make install
echo "把python3.8的bin目录加入到环境变量"
echo "export PATH=/opt/python38/bin:$PATH" >> /etc/profile
source /etc/profile
echo "安装Done..."
echo "升级pip3"
pip3 install --upgrade pip
