#!/bin/sh
if [[ $# = 0 ]] || [[ $# > 2 ]];then
    echo "Usage: ./io.sh duration"
    echo "e.g. ./io.sh 1m"
    exit 1
fi
stress-ng -d 1 --hdd-bytes 274877906944 -t $1
