./bin/bitcoin-cli -conf=$(pwd)/bitcoin.conf
export BTC_ADDRESS=$(ord -r wallet receive)
./bin/bitcoin-cli -conf=$(pwd)/bitcoin.conf generatetoaddress 101 $BTC_ADDRESS
ord -r wallet balance
ord -r wallet inscribe hello.txt
./bin/bitcoin-cli -conf=$(pwd)/bitcoin.conf -regtest generatetoaddress 1 $BTC_ADDRESS
echo $BTC_ADDRESS
