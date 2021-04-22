#! /bin/sh

# Example usage:
# ./135-uuidgen numberfile <namespace1> <namepace2>

uuidgen -t > $1.txt
uuidgen -m -n @dns -N $2 >> $1.txt
uuidgen -s -n @dns -N $3 >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

