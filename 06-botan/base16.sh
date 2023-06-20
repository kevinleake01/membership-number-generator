#! /bin/sh

# Example usage:
# ./base16.sh myfile-0005 "20230621-190724@kevinleake01"

printf $2 > 00_temp.txt
botan hex_enc 00_temp.txt > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

rm 00_temp.txt

