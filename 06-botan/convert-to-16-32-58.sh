#!/bin/sh

# ----- CONVERT-TO-16-32-58.SH -----

# This is a simple tool to convert from Base 64 to Bases 16, 32, and 58.
#
# Example usage:
#
#   ./convert-to-16-32-58.sh myfile0001
#

botan base64_dec $1.txt > 00_temp.bin

botan hex_enc 00_temp.bin > $1-16.txt
botan base32_enc 00_temp.bin > $1-32.txt
botan base58_enc 00_temp.bin > $1-58.txt
basenc --base64url 00_temp.bin > $1-64.txt

rm 00_temp.bin

# To convert to QR Code using Qrencode or Zint for Base16:
#
#   qrencode -8 -o qr-myfile-0001.png -r myfile0001-16.txt
#   zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001-16.txt
#
# You can do the same for myfile0001-32.txt for Base 32 and
# myfile0001-58.txt for Base 58.
#
