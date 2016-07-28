#!/bin/sh
if [[ $# = 0 ]] || [[ $# > 2 ]];then
    echo "Usage: ./memory.sh malloc-bytes duration"
    echo "e.g. ./memory.sh 1024m 60s"
    exit 1
fi
stress-ng --malloc 1 --malloc-bytes $1 -t $2
