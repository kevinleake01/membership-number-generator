/*
####################################
#
# --- STRING-2-HEX-0001.C++ ---
#
####################################

 Example usage:

    g++ string-2-hex-0001.cpp; ./a.out > myfile0001.txt

 Then to use Qrencode or Zint:

    qrencode -8 -o qr-myfile-0001.png -r myfile0001.txt
    zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001.txt

*/

#include <iostream>
#include <cstring>

using namespace std;

int main(int argc, char* argv[])
{
/* Please change this to suit your needs: */
  char s1[100]="20240504-210427@kevinleake01";

  for(unsigned int i=0; i<strlen(s1); i++)
  {
    cout << hex << (int) s1[i];
  }
  return 0;
}
