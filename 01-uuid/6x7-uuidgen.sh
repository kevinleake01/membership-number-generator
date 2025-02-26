#! /bin/sh

# NOTE: These are RFC-9562 UUIDs which will require util-linux 2.41 or later.

# Example usage:
# ./6x7-uuidgen.sh myfile-0001

uuidgen -6 > $1.txt
uuidgen -6 >> $1.txt
uuidgen -6 >> $1.txt
uuidgen -6 >> $1.txt
uuidgen -6 >> $1.txt
uuidgen -6 >> $1.txt
uuidgen -6 >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

