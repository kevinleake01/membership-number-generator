#!/bin/sh

# ----- CONVERT-TO-32-58-64.SH -----

# This is a simple tool to convert from Base 16 to Bases 32, 58, and 64.
#
# Example usage:
#
#   ./convert-to-32-58-64.sh myfile0001
#

basenc -d --base16 $1.txt > 00_temp.bin

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
# Then to convert to QR Code using Qrencode or Zint for base64url:
#
#   qrencode -8 -o qr-myfile-0001.png -r myfile0001-64.txt
#   zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001-64.txt
#
# You can do the same for myfile0001-32.txt for Base 32 and
# myfile0001-58.txt for Base 58.
#
