#! /bin/sh

# Example usage:
# ./135-ossp-uuid.sh myfile-0003 "20230614-183316@kevinleake01" "20230614-183316@kevinleake01"

uuid -v1 > $1.txt
uuid -v3 5d02ca0e-0915-11ee-a655-485d603c9b2e $2 >> $1.txt
uuid -v5 5d02ca0e-0915-11ee-a655-485d603c9b2e $3 >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

