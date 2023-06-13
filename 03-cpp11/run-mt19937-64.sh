#! /bin/sh

# Example usage:
# ./run-mt19937-64.sh myfile-0002

g++ mt19937-64.cpp
./a.out > $1.txt

rm a.out

qrencode -8 -o $1-qrencode.png -r $1.txt
zint -b 58 --eci=26 -o $1-zint.png -i $1.txt

