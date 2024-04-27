#! /bin/sh

# Example usage:
# ./hash-sha3-58.sh myfile-0001 "20240427-150216@kevinleake01"

printf $2 | botan hash --algo=SHA-3 --no-fsname --format=base58 > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

