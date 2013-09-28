#!/bin/sh
###################################################
# install the script to ~/usr/share/octopress-tools
# config the profile
###################################################

mkdir -p ~/usr/share/octopress-tools/bakup-profile

cp *.sh ~/usr/share/octopress-tools
chmod u+x ~/usr/share/octopress-tools/*.sh

#备份原配置文件
cp ~/.profile ~/usr/share/octopress-tools/bakup-profile

#将脚本路径加入PATH
echo  >> ~/.profile
echo "#octopress-tools" >> ~/.profile
echo 'PATH="/home/xtom/usr/share/octopress-tools:$PATH"' >> ~/.profile

#使更改的profile生效
. ~/.profile
