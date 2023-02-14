

bitcoind -regtest
start a new local test of the bitcoin network

ord -r wallet create
create a new test net wallet for ord
/btc.sh
sudo ./ordserver.sh

then
./wallet.sh

ord -r wallet receive
get a new receiver addr for your testnet ord wallet

bitcoin-cli -regtest generatetoaddress 101 <ordWalletAddr>
for 101 new blocks in test and send the coinbase to your ord regtest wallet

ord -r wallet inscribe <mp4File>
inscribe the test file on regtest network

bitcoin-cli -regtest generatetoaddress 1 <ordWalletAddr>
forge 1 new block including the test inscription txn (assuming it was valid) on the regtest network

ord -r server
start a local instance of ordinals.com using the regtest data

Navigate to localhost:80 to view the inscription