#!/bin/bash
#
# 此文件需要配合 vscode container 开发使用
mkdir -p /opt/xrdp/data/keys/
mkdir -p /tmp/xrdp_records/
make && make install
sed -i "s@LogLevel=.*@LogLevel=trace@g" /etc/xrdp/xrdp.ini
sed -i "s@#EnableConsole=.*@EnableConsole=true@g" /etc/xrdp/xrdp.ini
xrdp --nodaemon