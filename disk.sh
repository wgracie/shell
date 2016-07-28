#!/bin/sh
if [[ $# = 0 ]] || [[ $# > 2 ]];then
    echo "Usage: ./disk.sh block_count duration"
    echo "e.g. ./disk.sh 100 3m"
    exit 1
fi
dd if=/dev/zero of=/tmp/foobar count=$1 bs=1G
sleep $2
rm -rf /tmp/foobar
