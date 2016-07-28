#!/bin/sh
if [[ $# = 0 ]] || [[ $# > 2 ]];then
    echo "Usage: ./cpu.sh cpu_count duration"
    echo "e.g. ./cpu.sh 4 60s"
    exit 1
fi
stress-ng --cpu $1 -t $2
