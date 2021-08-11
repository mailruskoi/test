#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=eth-us.sparkpool.com:13333
WALLET=0x0415991022668f3DD764896f23D3a11c806f9ADd.googleWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done
