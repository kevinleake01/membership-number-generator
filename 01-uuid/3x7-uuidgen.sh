#! /bin/sh

# Example usage:
# ./3x7-uuidgen.sh myfile-0001

# Please edit the UUID Namespace and Name to suit your needs.
uuidgen -m -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210325@kevinleake01" > $1.txt
uuidgen -m -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210351@kevinleake01" >> $1.txt
uuidgen -m -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210420@kevinleake01" >> $1.txt
uuidgen -m -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210439@kevinleake01" >> $1.txt
uuidgen -m -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210506@kevinleake01" >> $1.txt
uuidgen -m -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210529@kevinleake01" >> $1.txt
uuidgen -m -n 82741d70-f468-11ef-8c78-485d603c9b2e -N "20250314-210547@kevinleake01" >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

