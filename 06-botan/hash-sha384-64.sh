#! /bin/sh

# Example usage:
# ./hash-sha384-64.sh myfile-0001 "20240427-161258@kevinleake01"

printf $2 | botan hash --algo=SHA-384 --no-fsname --format=base64 > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

