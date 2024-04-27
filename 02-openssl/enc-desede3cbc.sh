#! /bin/sh

# Example usage:
# ./enc-desede3cbc.sh myfile-0001 "20240427-210256@kevinleake01" "1234" 100

echo $2 > 00_temp.txt
openssl enc -des-ede3-cbc -base64 -in 00_temp.txt -out $1.txt -pass pass:$3 -iter $4

rm 00_temp.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

