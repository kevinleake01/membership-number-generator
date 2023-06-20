#! /bin/sh

# Example usage:
# ./basenc-base64url.sh myfile-0004 "20230622-220345@kevinleake01"

printf $2 | basenc --base64url > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

