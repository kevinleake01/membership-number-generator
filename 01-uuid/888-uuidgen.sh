#! /bin/sh

# NOTE: These are RFC-9562 UUIDs which will require util-linux 2.41 or later.

# Example usage:
# ./888-uuidgen.sh myfile-0001

gcc uuid-v8.c -o uuid-v8

# Please edit the details below to suit your needs.
./uuid-v8 93271858 8964 185 5084 3340834 7310229 > $1.txt
./uuid-v8 4083092 8125 793 528 1965721 1778203 >> $1.txt
./uuid-v8 9334418 3027 1051 975 2753291 682197 >> $1.txt

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

