#! /bin/sh

# Example usage:
# ./135-ossp-uuid.sh numberfile <namespace1> <namespace2>

uuid -v1 > $1.txt
uuid -v3 ns:DNS $2 >> $1.txt
uuid -v5 ns:DNS $3 >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

