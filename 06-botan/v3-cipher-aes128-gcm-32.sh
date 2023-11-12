#! /bin/sh

# NOTE: This requires Botan v3 or later.

# Example usage:
# ./v3-cipher-aes128-gcm-32.sh myfile-0001 "20231115-180641@kevinleake01"

printf "$2" > 00_temp.txt

botan cipher --cipher=AES-128/GCM  \
  --key=000102030405060708090a0b0c0d0e0f  \
  --nonce=0001 --ad=0001 00_temp.txt | basenc --base32 > $1.txt

rm 00_temp.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

