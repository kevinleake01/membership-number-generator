#! /bin/sh

# Example usage:
# ./135-ossp-uuid.sh numberfile <namespace1> <namespace2>

uuid -v1 > $1.txt
uuid -v3 ns:DNS $2 >> $1.txt
uuid -v5 ns:DNS $3 >> $1.txt

qrencode -r $1.txt -o $1-qrencode.png
zint -b 58 -o $1-zint.png --border=5 -i $1.txt

