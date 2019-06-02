#! /bin/sh

# Example usage:
# ./run-mt19937-64.sh numberfile

g++ mt19937-64.cpp
./a.out > $1.txt

rm a.out

qrencode -r $1.txt -o $1-qrencode.png
zint -b 58 -o $1-zint.png --border=5 -i $1.txt

