#include <iostream>
#include <iomanip>
#include <bitset>

extern "C" int integer_shift(unsigned int a, unsigned int count, unsigned int *a_shl, unsigned int *a_shr);

int main()
{
  unsigned int a = 3119;
  unsigned int count = 6;

  unsigned int a_shl;
  unsigned int a_shr;

  std::cout << integer_shift(a, count, &a_shl, &a_shr) << std::endl;
  std::cout << a_shl << std::endl;
  std::cout << a_shr << std::endl;
}