#! /bin/sh

# Example usage:
# ./rand16.sh myfile-0001 32

botan rng --format=hex $2 > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

