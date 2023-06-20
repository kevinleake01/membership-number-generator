#! /bin/sh

# Example usage:
# ./base58.sh myfile-0005 "20230621-190724@kevinleake01"

printf $2 > 00_temp.txt
botan base58_enc --check 00_temp.txt > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

rm 00_temp.txt

