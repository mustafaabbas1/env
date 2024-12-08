#!/bin/bash

script_path=$(readlink -f $(dirname $0))
cat $script_path/.bashrc >> ~/.bashrc
