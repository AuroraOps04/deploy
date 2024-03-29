#!/bin/bash
# 配置pypi服务器，首先得开启18080端口
echo "正在配置pypi-server"
echo "下载pypi-server"
pip3 install pypiserver
apt-get install apache2-utils
if [ -d /opt/mypypi/packages ]
then
    echo "正在创建目录/opt/mypypi/packages"
else
    mkdir -p /opt/mypypi/packages
fi
htpasswd -sc /opt/mypypi/.htaccess taorui
pip3 install passlib
pypi-server -p 18080 -P /opt/mypypi/.htaccess /opt/mypypi/packages&
echo "已经创建了pypi-server到127.0.0.1:18080并且放入了后台，目录是/opt/mypypi/packages"
