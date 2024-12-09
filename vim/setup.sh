#!/bin/bash

script_path=$(readlink -f $(dirname $0))
mkdir -vp ~/.vimfiles/backup
mkdir -vp ~/.vimfiles/temp
cp -v $script_path/.vimrc ~/.vimrc
