#! /bin/sh

# Example usage:
# ./111-ossp-uuid.sh myfile-0002

uuid -v1 -n 3 -o $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

