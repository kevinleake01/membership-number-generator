#! /bin/sh

# Example usage:
# ./basenc-hex.sh myfile-0001 "20230614-215504@kevinleake01"

printf $2 | basenc --base16 > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

