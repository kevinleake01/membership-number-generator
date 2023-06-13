#! /bin/sh

# Example usage:
# ./enc-base64.sh myfile-0002 "20230614-191438@kevinleake01"

printf $2 | base64 > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

