#! /bin/sh

# *** IMPORTANT NOTE ***
# This uses Botan v2 encryption, and will not run in Botan v3.
# If you are using Botan v3 or later, please use the v3-ciphers.

# Example usage:
# ./v2-cipher-aes128-gcm-32.sh myfile-0001 "20240428-142237@kevinleake01"

printf "$2" > 00_temp.txt

botan encryption --mode=aes-128-gcm  \
  --key=000102030405060708090a0b0c0d0e0f  \
  --iv=0001 --ad=0001 < 00_temp.txt > 01_temp.bin

botan base32_enc 01_temp.bin > $1.txt

rm 00_temp.txt
rm 01_temp.bin

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

