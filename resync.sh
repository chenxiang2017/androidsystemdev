#!/bin/bash  
PATH=~/bin:$PATH  
#repo init -u https://android.googlesource.com/platform/manifest -b android-4.0.1_r1
repo init -u https://aosp.tuna.tsinghua.edu.cn/platform/manifest -b android-4.0.1_r1
repo sync  
while [ $? != 0 ]; do  
    echo "*Error: sync failed, re-sync again"
    sleep 5  
    repo sync  
done  
