#!/bin/bash
if [[ $# = 0 ]] || [[ $# > 2 ]];then
    echo "Usage: ./network.sh parallelism duration"
    echo "e.g. ./cpu.sh 1000 60s"
    exit 1
fi
iperf -u -c 100.100.100.100 -P $1 -t $2 > /dev/null
