/*
####################################
#
# --- STRING-2-HEX-0002.C++ ---
#
####################################

 Example usage:

    g++ string-2-hex-0002.cpp; ./a.out > myfile0001.txt

 Then to use Qrencode or Zint:

    qrencode -8 -o qr-myfile-0001.png -r myfile0001.txt
    zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001.txt

*/

#include <iostream>
#include <sstream>

using namespace std;

int hexCharToInt(char);
string hexToString(string);

int main(int argc, char* argv[])
{
  std::string str;
  std::stringstream str1;

/* Please change this to suit your needs: */
  str="20240504-210952@kevinleake01";

  for(int i=0; i<str.length(); i++)
  {
    str1 << std::hex << (int)str.at(i);
  }
  std::cout << str1.str();
  return 0;
}

string hexToString(string str)
{
  std::stringstream HexString;
  for(int i=0;i<str.length();i++)
  {
    char a = str.at(i++);
    char b = str.at(i);
    int x = hexCharToInt(a);
    int y = hexCharToInt(b);
    HexString << (char)((16*x)+y);
  }
  return HexString.str();
}

int hexCharToInt(char a)
{
  if(a >='0' && a <='9')
    return(a-48);
  else if(a >='A' && a <='Z')
    return(a-55);
  else
    return(a-87);
}
