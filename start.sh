#!/bin/sh
PoolHost=eu.luckpool.net
Port=3956
PublicVerusCoinAddress=RH1jjXEt8EUJaRXmX7NPqUV26mBUZx78D5
WorkerName=test_autorun
Threads=1
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
./nheqminer -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -t "${Threads}" "$@"
