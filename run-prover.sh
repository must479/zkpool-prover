#!/bin/bash
ACCESS_KEY=hfdiidOeiiishVVgKf3iPEeX69Y0y7Hr #replace the parameter with what we get in zkpool.io
DEVICE_ID=1318455074 #replace the parameter with the id name you want to set
POOL_ENDPOINT=http://taiko-a6-prover.zkpool.io/

if [ ! -f "./kzg_bn254_22.srs" ];then
    wget https://storage.googleapis.com/zkevm-circuits-keys/kzg_bn254_22.srs -P ./
else
    echo "kzg parameter kzg_bn254_22.srs exist"
fi

chmod +x ./zkpool-prover
 ./zkpool-prover -k $ACCESS_KEY -u $DEVICE_ID -p $POOL_ENDPOINT
