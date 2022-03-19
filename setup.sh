#!/bin/bash

#Author: shixinchen@smail.nju.edu.cn

 set -ex
 cur=$(cd "$(dirname -- "$0")"; pwd)
 cd $cur

 # copy .vimrc & bundle
 mkdir -p ~/.vim/bundle
 cp -rf ./* ~/.vim/
 cp -rf .vimrc ~
 user=`whoami`
 sudo chown ${user}:${user} ~/.viminfo

 #install with bash
