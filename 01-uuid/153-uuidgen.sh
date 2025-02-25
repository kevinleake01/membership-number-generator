#! /bin/sh

# Example usage:
# ./153-uuidgen.sh myfile-0001

uuidgen -t > $1.txt

# Please edit the UUID Namespace and Name to suit your needs.
uuidgen -s -n 5d02ca0e-0915-11ee-a655-485d603c9b2e -N "20250314-151238@kevinleake01" >> $1.txt
uuidgen -m -n 5d02ca0e-0915-11ee-a655-485d603c9b2e -N "20250314-151304@kevinleake01" >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

