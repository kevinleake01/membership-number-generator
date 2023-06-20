#! /bin/sh

# Example usage:
# ./rand58.sh myfile-0003 32

botan rng --format=base58 $2 > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

