#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=us-eth.2miners.com:2020
WALLET=0xf6aF8a7C8B60F39396F5EFF81300db2eC6Cd7d4d.google1Worker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done
