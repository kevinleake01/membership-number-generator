/*
#
# --- BATCH-EXEC-CONVERT-TO-32-58-64.C++ ---
#

This is a simple tool to convert from Base 16 to Bases 32, 58, and 64.

The filename shown here has been set to myfile0001. Please change this
to a filename that suits your needs.

To run the program:

  g++ batch-exec-convert-to-32-58-64.cpp; ./a.out


To convert to QR Code using Qrencode or Zint for base64url:

  qrencode -8 -o qr-myfile-0001.png -r myfile0001-64.txt
  zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001-64.txt

You can do the same for myfile0001-32.txt for Base 32 and
myfile0001-58.txt for Base 58.

*/

#include <cstdlib>

int main(int argc, char *argv[])
{
  std::system("basenc -d --base16 myfile0001.txt > 00_temp.bin");
  std::system("basenc --base32 00_temp.bin > myfile0001-32.txt");
  std::system("basenc --base58 00_temp.bin > myfile0001-58.txt");
  std::system("basenc --base64url 00_temp.bin > myfile0001-64.txt");
  std::system("rm 00_temp.bin");
}

