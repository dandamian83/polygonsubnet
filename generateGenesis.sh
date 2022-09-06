#!/bin/sh
NODE1_ID=$(./extractNodeId.sh node1_details)
NODE2_ID=$(./extractNodeId.sh node2_details)
polygon-edge genesis --consensus ibft --ibft-validators-prefix-path test-chain- --bootnode /ip4/127.0.0.1/tcp/10001/p2p/$NODE1_ID --bootnode /ip4/127.0.0.1/tcp/20001/p2p/$NODE2_ID --premine=0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266:1983000000000000000000