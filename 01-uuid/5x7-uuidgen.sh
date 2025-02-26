#! /bin/sh

# Example usage:
# ./5x7-uuidgen.sh myfile-0001

# Please edit the UUID Namespace and Name to suit your needs.
uuidgen -s -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210732@kevinleake01" > $1.txt
uuidgen -s -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210754@kevinleake01" >> $1.txt
uuidgen -s -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210824@kevinleake01" >> $1.txt
uuidgen -s -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210849@kevinleake01" >> $1.txt
uuidgen -s -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210912@kevinleake01" >> $1.txt
uuidgen -s -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210936@kevinleake01" >> $1.txt
uuidgen -s -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210958@kevinleake01" >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

