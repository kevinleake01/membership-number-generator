#! /bin/sh

# NOTE: These are RFC-9562 UUIDs which will require util-linux 2.41 or later.

# Example usage:
# ./678-uuidgen.sh myfile-0001

gcc uuid-v8.c -o uuid-v8

# Please edit the details below to suit your needs.
uuidgen -6 > $1.txt
uuidgen -7 >> $1.txt
./uuid-v8 412168285 10652 2064 1205 898235 972835 >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

