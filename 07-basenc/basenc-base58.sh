#! /bin/sh

# Base58 is available as a Python module, and can be installed by
# using Pip with this command:
#
#   pip install base58

# Links:
#
#  https://pypi.org/project/base58/
#  https://github.com/keis/base58


# Example usage:
# ./basenc-base58.sh myfile-0001 "20230622-223921@kevinleake01"

printf $2 | base58 > $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

