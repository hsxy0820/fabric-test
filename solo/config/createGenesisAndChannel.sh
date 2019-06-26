#!/bin/bash
export FABRIC_CFG_PATH=$PWD
./configtxgen -profile TwoOrgsOrdererGenesis -outputBlock ./genesis.block -channelID syschan
if [ $? -ne 0 ];then
   echo "create genesis failed"
   exit 1
fi
./configtxgen -profile TwoOrgsChannel -outputCreateChannelTx ./channel.tx -channelID mychannel
if [ $? -ne 0 ];then
   echo "create channel tx failed"
   exit 1
fi
