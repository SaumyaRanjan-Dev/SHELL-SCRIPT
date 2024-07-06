#!/bin/bash

#####################
#Author:Saumya
#Date: 06/07/2024
#
#This Script outputs the node health
#
#Versions: v1
#####################
set -x #Debug mode
echo "Print the disk space"
df -h

echo "Print the Memomry"
free -g

echo "Print the CPU"
nproc