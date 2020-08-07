#!/bin/bash
cd /home/ubuntu/pilotNode/node/
bootnode --genkey=nodekey
cd ..
check_results='bootnode --nodekey=node/nodekey --writeaddress'
echo "get encode from node: $check_results"
cd node/
# cp genesis.json genesis.json 
# cp permissioned-nodes.json permissioned-nodes.json 
# cp static-nodes.json static-nodes.json 

# sed 's/yourEnodeInfo/$check_results/' permissioned-nodes.json
# sed 's/your.ip.address/$ip_address/' permissioned-nodes.json

# sed 's/yourEnodeInfo/$check_results/' static-nodes.json
# ip_address='dig +short myip.opendns.com @resolver1.opendns.com'
# sed 's/your.ip.address/$ip_address/' static-nodes.json

# cd ..
# geth --datadir /home/ubuntu/pilotNode/node init /home/ubuntu/pilotNode/node/genesis.json
# tessera -keygen -filename /home/ubuntu/pilotNode/node/tm

# privatekeyFile="/home/ubuntu/pilotNode/node/tm.key"
# publickeyFile="/home/ubuntu/pilotNode/node/tm.pub"
# if [ ! -f "$privatekeyFile" ]; then
# echo "generate tessera key failed: missing private key"
# goto end:
# fi
# if [ ! -f "$publickeyFile" ]; then
# echo "gen key failed: missing public key"
# goto end:
# fi

# echo "generate tessera key success"
# cd node/
# cp tessera-config.json tessera-config.json 

# publickey=$(cat ./tm.pub)
# privatekey=$(cat ./tm.key)
# sed 's/values stored in tm.key file/$privatekey/' tessera-config.json
# sed 's/values stored in tm.pub file/$publickey/' tessera-config.json
# sed 's/your.ip.address/$ip_address/' tessera-config.json
# cd ..

# end:
# echo "node deployed success"
