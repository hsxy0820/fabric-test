#!/bin/bash
rm -rf ./orderer1/data
rm -rf ./orderer2/data
rm -rf ./orderer3/data
cp -p ./config/genesis.block ./orderer1/genesis.block
cp -p ./config/genesis.block ./orderer2/genesis.block
cp -p ./config/genesis.block ./orderer3/genesis.block
cp -p ./config/channel.tx ./cli/data/channel.tx
cp -p ./config/channel.tx ./peer1.org1/msp/channel.tx
cp -p ./config/channel.tx ./peer2.org1/msp/channel.tx
cp -p ./config/channel.tx ./peer1.org2/msp/channel.tx
cp -p ./config/channel.tx ./peer2.org2/msp/channel.tx
rm -rf ./peer1.org1/data
rm -rf ./peer2.org1/data
rm -rf ./peer1.org2/data
rm -rf ./peer2.org2/data
