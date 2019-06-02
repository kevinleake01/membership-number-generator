#! /bin/sh

# Example usage:
# ./135-uuidgen numberfile <namespace1> <namepace2>

uuidgen -t > $1.txt
uuidgen -m -n @dns -N $2 >> $1.txt
uuidgen -s -n @dns -N $3 >> $1.txt

qrencode -r $1.txt -o $1-qrencode.png
zint -b 58 -o $1-zint.png --border=5 -i $1.txt

