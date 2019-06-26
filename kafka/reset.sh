#!/bin/bash
docker-compose -f kafka.yaml down
cp -p ./config/genesis.block ./orderer1/genesis.block
cp -p ./config/genesis.block ./orderer2/genesis.block
cp -p ./config/channel.tx ./cli/data/channel.tx
rm -rf ./org1.peer1/data
rm -rf ./org1.peer2/data
rm -rf ./org2.peer1/data
rm -rf ./org2.peer2/data
rm -rf ./orderer1/data
rm -rf ./orderer2/data
rm -rf ./zookeeper/z1
rm -rf ./zookeeper/z2
rm -rf ./zookeeper/z3
rm -rf ./kafkaData/*

