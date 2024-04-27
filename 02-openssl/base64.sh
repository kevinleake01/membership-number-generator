#! /bin/sh

# Example usage:
# ./base64.sh myfile-0001 "20240427-132805@kevinleake01"

printf $2 > 00_temp.txt

openssl enc -base64 -in 00_temp.txt -out $1.txt

rm 00_temp.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

