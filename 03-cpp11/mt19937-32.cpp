#include <iostream>
#include <iomanip>
#include <random>

using namespace std;

int main(int argc, char* argv[])
{
  std::random_device rd;
  std::mt19937 randnum(rd());
  std::uniform_int_distribution<int> dist(0, 255);

  for (int i=0; i<=32; i++)
  {
    cout << setbase(16) << setw(2) << setfill('0') << dist(randnum);
  }
  cout << '\n';

  return 0;
}

