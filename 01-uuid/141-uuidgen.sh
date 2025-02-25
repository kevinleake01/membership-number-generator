#! /bin/sh

# Example usage:
# ./141-uuidgen.sh myfile-0001

uuidgen -t > $1.txt
uuidgen -r >> $1.txt
uuidgen -t >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

