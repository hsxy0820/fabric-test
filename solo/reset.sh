#!/bin/bash
rm -rf ./orderer/data
cp -p ./config/genesis.block ./orderer/genesis.block
cp -p ./config/channel.tx ./cli/data/channel.tx
rm -rf ./org1.peer1/data
rm -rf ./org1.peer2/data
rm -rf ./org2.peer1/data
rm -rf ./org2.peer2/data


