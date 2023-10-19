/*
####################################
#
# --- BASE58.C++ ---
#
####################################

Base58 is available as a Python module, and can be installed by
using Pip with this command:

  pip install base58

Please see:
  https://pypi.org/project/base58/
  https://github.com/keis/base58


 Example usage:

    gcc base58.cpp; ./a.out > myfile0001.txt

 Then to use Qrencode or Zint:

    qrencode -8 -o qr-myfile-0001.png -r myfile0001.txt
    zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001.txt

*/

#include <cstdlib>

int main(int argc, char *argv[])
{
// Change the data to suit your needs:
  std::system("printf \"20231023-193920@kevinleake01\" | base58");
}

