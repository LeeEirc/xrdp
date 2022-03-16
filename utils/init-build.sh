#!/bin/bash
#
# 此文件配合 vscode container 开发使用

root_folder=$(pwd)

cd "$root_folder" 
cd libpainter && ./bootstrap  && ./configure && make  && make install

cd "$root_folder" 

cd librfxcodec &&  ./bootstrap && ./configure && make && make install