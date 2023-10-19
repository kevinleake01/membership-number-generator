/*
####################################
#
# --- BASE32.C++ ---
#
####################################

 Example usage:

    gcc base32.cpp; ./a.out > myfile0001.txt

 Then to use Qrencode or Zint:

    qrencode -8 -o qr-myfile-0001.png -r myfile0001.txt
    zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001.txt

*/

#include <cstdlib>

int main(int argc, char *argv[])
{
// Change the data to suit your needs:
  std::system("printf \"20231023-192706@kevinleake01\" | basenc --base32");
}

