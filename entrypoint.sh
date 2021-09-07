#!/bin/bash
./geth --datadir "./.ethereum" --http --http.addr 0.0.0.0  --http.api personal,eth,net,web3,admin,miner,txpool,debug
