#! /bin/sh

# Example usage:
# ./hash-sha512-64.sh myfile-0004 "20230621-183507@kevinleake01"

printf $2 | botan hash --algo=SHA-512 --format=base64 > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

