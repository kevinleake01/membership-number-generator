#! /bin/sh

# Example usage:
# ./135-uuidgen myfile-0001 "20230620-182532@kevinleake01" "20230620-182752@kevinleake01"

uuidgen -t > $1.txt
uuidgen -m -n 5d02ca0e-0915-11ee-a655-485d603c9b2e -N $2 >> $1.txt
uuidgen -s -n 5d02ca0e-0915-11ee-a655-485d603c9b2e -N $3 >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

