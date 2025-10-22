#! /bin/sh

# Note: Requires Coreutils 9.8 or later.

# Example usage:
# ./basenc-base58.sh myfile-0001 "20251026-223921@kevinleake01"

printf $2 | basenc --base58 > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

