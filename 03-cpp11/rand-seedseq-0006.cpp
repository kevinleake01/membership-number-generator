/*
####################################
#
# --- RAND-SEEDSEQ-0006.C++ ---
#
####################################

 Example usage:

    g++ rand-seedseq-0006.cpp; ./a.out > myfile0001.txt

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

/* Please change the values in seq{...} and seeds() to suit your needs */
  std::seed_seq seq{94320, 42677, 18632, 32735, 92740};
  std::vector<std::uint32_t> seeds(10);
  seq.generate(seeds.begin(), seeds.end());

  for (std::uint32_t n : seeds)
  {
    cout << setbase(16) << setw(8) << setfill('0') << n;
  }
  cout << '\n';

  return 0;
}

