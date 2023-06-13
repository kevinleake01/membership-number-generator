#! /bin/sh

# Example usage:
# ./basenc-base32.sh myfile-0002 "20230614-215737@kevinleake01"

printf $2 | basenc --base32 > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

