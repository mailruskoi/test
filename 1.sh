#!/bin/sh

# Change the following address to your ETH addr.
ADDRESS=0x0415991022668f3DD764896f23D3a11c806f9ADd

USERNAME=$ADDRESS.google2Worker
POOL=eth-us.sparkpool.com:13333
# Change SCHEME according to your POOL. For example:
# ethash:     Nanopool
# ethproxy:   BTC.com, Ethermine, PandaMiner, Sparkpool
# ethstratum: Antpool.com, BTC.com, F2pool, Huobipool.com, Miningpoolhub
SCHEME=ethstratum

./bminer -uri $SCHEME://$USERNAME@$POOL -api 127.0.0.1:1880
