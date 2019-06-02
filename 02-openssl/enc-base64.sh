#! /bin/sh

# Example usage:
# ./enc-base64.sh numberfile <namespace1>

echo $2 | base64 > $1.txt

qrencode -r $1.txt -o $1-qrencode.png
zint -b 58 -o $1-zint.png --border=5 -i $1.txt

