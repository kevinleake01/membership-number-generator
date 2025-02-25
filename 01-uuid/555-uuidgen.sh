#! /bin/sh

# Example usage:
# ./555-uuidgen.sh myfile-0001

# Please edit the UUID Namespace and Name to suit your needs.
uuidgen -s -n 5d02ca0e-0915-11ee-a655-485d603c9b2e -N "20250314-142539@kevinleake01" > $1.txt
uuidgen -s -n 5d02ca0e-0915-11ee-a655-485d603c9b2e -N "20250314-142605@kevinleake01" >> $1.txt
uuidgen -s -n 5d02ca0e-0915-11ee-a655-485d603c9b2e -N "20250314-142647@kevinleake01" >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

