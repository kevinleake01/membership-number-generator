/*
####################################
#
# --- STRING-2-HEX-0005.C++ ---
#
####################################

 Example usage:

    g++ string-2-hex-0005.cpp; ./a.out > myfile0001.txt

 Then to use Qrencode or Zint:

    qrencode -8 -o qr-myfile-0001.png -r myfile0001.txt
    zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001.txt

*/

#include <iostream>
#include <iomanip>

int main(int argc, char* argv[])
{

/* Please change this to suit your needs: */
  std::string str1 = "20240504-213209@kevinleake01";

  for (char character : str1)
  {
    std::cout << std::hex << std::setw(2) << std::setfill('0') << (int)(unsigned char)character;
  }
  return 0;
}