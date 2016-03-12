#!/bin/bash

make
bitcoin-cli -datadir=/data/blockchain/bitcoin stop
sleep 5
cp src/bitcoind /usr/sbin/bitcoind-0.12
bitcoind-0.12 -datadir=/data/blockchain/bitcoin
