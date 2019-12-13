#!/bin/bash
# 配置python3的virtualenv和virtualenvwrapper
echo "pip3安装 virtualenv virtualenvwrapper"
pip3 install virtualenv
pip3 install virtualenvwrapper
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc
echo "export VIRTUALENVWRAPPER_PYTHON=/opt/python38/bin/python3" >> ~/.bashrc
echo "source /opt/python38/bin/virtualenvwrapper.sh" >> ~/.bashrc
source ~/.bashrc
