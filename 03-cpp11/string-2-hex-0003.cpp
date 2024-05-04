/*
####################################
#
# --- STRING-2-HEX-0003.C++ ---
#
####################################

 Example usage:

    g++ string-2-hex-0003.cpp; ./a.out > myfile0001.txt

 Then to use Qrencode or Zint:

    qrencode -8 -o qr-myfile-0001.png -r myfile0001.txt
    zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001.txt

*/

#include <iostream>
#include <iterator>
#include <sstream>
#include <string>

using std::cout;
using std::endl;
using std::hex;
using std::string;
using std::stringstream;

int main(int argc, char* argv[])
{

/* Please change this to suit your needs: */
  string s1 = "20240504-211608@kevinleake01";

  for (const auto &item : s1)
  {
    cout << hex << int(item);
  }
  return 0;
}
