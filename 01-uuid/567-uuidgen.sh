#! /bin/sh

# NOTE: These are RFC-9562 UUIDs which will require util-linux 2.41 or later.

# Example usage:
# ./567-uuidgen.sh myfile-0001

# Please edit the UUID Namespace and Name to suit your needs.
uuidgen -s -n 5d02ca0e-0915-11ee-a655-485d603c9b2e -N "20250314-144128@kevinleake01" > $1.txt
uuidgen -6 >> $1.txt
uuidgen -7 >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

