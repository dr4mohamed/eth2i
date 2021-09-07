#!/bin/bash
/home/eth/geth --datadir "/home/eth/.ethereum" --http --http.addr 0.0.0.0 --http.port $RPC_PORT  --http.api personal,eth,net,web3,admin,miner,txpool,debug
