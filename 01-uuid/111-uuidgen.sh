#! /bin/sh

# Example usage:
# ./111-uuidgen.sh numberfile

uuidgen -t > $1.txt
uuidgen -t >> $1.txt
uuidgen -t >> $1.txt

qrencode -r $1.txt -o $1-qrencode.png
zint -b 58 -o $1-zint.png --border=5 -i $1.txt

