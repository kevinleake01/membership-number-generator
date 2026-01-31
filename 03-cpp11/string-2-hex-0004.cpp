/*
####################################
#
# --- STRING-2-HEX-0004.C++ ---
#
####################################

 Example usage:

    g++ string-2-hex-0004.cpp; ./a.out > myfile0001.txt

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
  string s1 = "20260214-133728@kevinleake01";

  string s2;
  stringstream ss;

  for (const auto &item : s1)
  {
    ss << hex << int(item);
  }
  s2 = ss.str();
  cout << s2;

  return 0;
}
