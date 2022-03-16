#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=eth.kryptex.network:8888
WALLET=naritomomi@gmail.com.paperspace

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done
