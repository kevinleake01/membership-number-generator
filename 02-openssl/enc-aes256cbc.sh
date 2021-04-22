#! /bin/sh

# Example usage:
# ./enc-aes256cbc.sh numberfile <namespace1> <namespace2> <namespace3> <seed_num4>

echo $2 > 00_temp.txt
openssl enc -aes-256-cbc -base64 -in 00_temp.txt -out $1.txt -pass pass:$3 -iter $4

rm 00_temp.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

