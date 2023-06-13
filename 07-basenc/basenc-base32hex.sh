#! /bin/sh

# Example usage:
# ./basenc-base32hex.sh myfile-0003 "20230614-220136@kevinleake01"

printf $2 | basenc --base32hex > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

