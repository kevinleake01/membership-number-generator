#!/bin/sh

# ----- CONVERT-TO-16-32-58.SH -----

# This is a simple tool to convert from Base 64 to Bases 16, 32, and 58.
#
# Example usage:
#
#   ./convert-to-16-32-58.sh myfile0001
#

basenc -d --base64 $1.txt > 00_temp.bin

basenc --base16 00_temp.bin > $1-16.txt
basenc --base32 00_temp.bin > $1-32.txt
#base58 00_temp.bin > $1-58.txt
botan base58_enc 00_temp.bin > $1-58.txt
basenc --base64url 00_temp.bin > $1-64.txt

rm 00_temp.bin

# ------------------------------
# Base58 is a python 3 module, and can be installed using:
#
#   pip install base58
#
# Or you can use Botan, if this is installed.
#
# ------------------------------
# Then to convert to QR Code using Qrencode or Zint for Base16:
#
#   qrencode -8 -o qr-myfile-0001.png -r myfile0001-16.txt
#   zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001-16.txt
#
# You can do the same for myfile0001-32.txt for Base 32 and
# myfile0001-58.txt for Base 58.
#
