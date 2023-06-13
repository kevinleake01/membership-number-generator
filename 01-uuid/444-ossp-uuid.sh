#! /bin/sh

# Example usage:
# ./444-ossp-uuid.sh myfile-0004

uuid -v4 -n 3 -o $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

