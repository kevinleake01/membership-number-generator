#! /bin/sh

# Example usage:
# ./111-ossp-uuid.sh numberfile

uuid -v1 -n 3 -o $1.txt

qrencode -r $1.txt -o $1-qrencode.png
zint -b 58 -o $1-zint.png --border=5 -i $1.txt

