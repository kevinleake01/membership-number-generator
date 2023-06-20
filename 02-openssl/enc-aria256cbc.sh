#! /bin/sh

# Example usage:
# ./enc-aria256cbc.sh myfile-0001 "20230620-190538@kevinleake01" "20230620-190804@kevinleake01" 100

echo $2 > 00_temp.txt
openssl enc -aria-256-cbc -base64 -in 00_temp.txt -out $1.txt -pass pass:$3 -iter $4

rm 00_temp.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

