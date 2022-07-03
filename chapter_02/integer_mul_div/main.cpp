#include <iostream>
#include <iomanip>
#include <bitset>

extern "C" int integer_mul_div(int a, int b, int *prod, int *quo, int *rem);

int main()
{
  int a = 47;
  int b = 13;
  int prod = 0;
  int quo = 0;
  int rem = 0;

  std::cout << "result: " << integer_mul_div(a, b, &prod, &quo, &rem) << std::endl;
  std::cout << "prod: " << prod << std::endl;
  std::cout << "quo: " << quo << std::endl;
  std::cout << "rem: " << rem << std::endl;
}