#! /bin/sh

# Example usage:
# ./hash-sha256-16.sh myfile-0001 "20240427-151234@kevinleake01"

printf $2 | botan hash --algo=SHA-256 --no-fsname --format=hex > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

