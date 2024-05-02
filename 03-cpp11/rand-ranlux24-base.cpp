/*
####################################
#
# --- RAND-RANLUX24-BASE.C++ ---
#
####################################

 Example usage:

    g++ rand-ranlux24-base.cpp; ./a.out 32 100 > myfile0001.txt

 Then to use Qrencode or Zint:

    qrencode -8 -o qr-myfile-0001.png -r myfile0001.txt
    zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001.txt

*/

#include <cstdlib>
#include <iostream>
#include <iomanip>
#include <random>

using namespace std;

int main(int argc, char* argv[])
{
  int length=atoi(argv[1]);
  int randseed=atoi(argv[2]);

  std::ranlux24_base randnum(randseed);
  std::uniform_int_distribution<int> dist(0, 255);

  for (int i=0; i<=length; i++)
  {
    cout << setbase(16) << setw(2) << setfill('0') << dist(randnum);
  }
  cout << '\n';

  return 0;
}
