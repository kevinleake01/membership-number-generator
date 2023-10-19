/*
####################################
#
# --- BASE64URL.C++ ---
#
####################################

 Example usage:

    gcc base64url.cpp; ./a.out > myfile0001.txt

 Then to use Qrencode or Zint:

    qrencode -8 -o qr-myfile-0001.png -r myfile0001.txt
    zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001.txt

*/

#include <cstdlib>

int main(int argc, char *argv[])
{
// Change the data to suit your needs:
  std::system("printf \"20231023-192045@kevinleake01\" | basenc --base64url");
}

