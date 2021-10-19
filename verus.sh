#!/bin/bash
FILE=./SRBMiner-Multi-0-8-0-Linux.tar.xz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.0/SRBMiner-Multi-0-8-0-Linux.tar.xz
    tar xvf SRBMiner-Multi-0-8-0-Linux.tar.xz
fi
screen -dmLS mine sudo ./SRBMiner-Multi-0-8-0/SRBMiner-MULTI --disable-gpu --algorithm verushash --pool stratum+tcp://verushash.mine.zergpool.com:3300 --wallet dgb1qh44tn3h8tq77k8yy58lajcd2qv2lfzx3a782a5 --password c=DGB,mc=VRSC
