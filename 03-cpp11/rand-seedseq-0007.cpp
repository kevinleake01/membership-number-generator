/*
####################################
#
# --- RAND-SEEDSEQ-0007.C++ ---
#
####################################

 Example usage:

    g++ rand-seedseq-0007.cpp; ./a.out > myfile0001.txt

 Then to use Qrencode or Zint:

    qrencode -8 -o qr-myfile-0001.png -r myfile0001.txt
    zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile0001.txt

*/

#include <cstdint>
#include <iostream>
#include <iomanip>
#include <random>

using namespace std;

int main(int argc, char* argv[])
{

/* Please chane the values in seq{} and seeds() to suit your needs */
  std::seed_seq seq{52843, 48271, 66584, 52916, 29938, 94312, 30525};
  std::vector<std::uint32_t> seeds(10);
  seq.generate(seeds.begin(), seeds.end());

  for (std::uint32_t n : seeds)
  {
    cout << setbase(16) << setw(8) << setfill('0') << n;
  }
  cout << '\n';

  return 0;
}

