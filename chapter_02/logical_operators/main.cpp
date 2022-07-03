#include <iostream>
#include <iomanip>

extern "C" unsigned int integer_logical(unsigned int a, unsigned int b, unsigned int c, unsigned int d);

// Make the variable usable from assembly.
extern "C" unsigned int global_var = 0;

unsigned int integer_logical_cpp(unsigned int a, unsigned int b, unsigned int c, unsigned int d)
{
  return (((a & b) | c) ^ d) + global_var;
}

int main()
{
  unsigned int a = 0x00223344;
  unsigned int b = 0x00775544;
  unsigned int c = 0x00555555;
  unsigned int d = 0x00998877;

  global_var = 7;

  std::cout << integer_logical_cpp(a, b, c, d) << std::endl;

  std::cout << integer_logical(a, b, c, d) << std::endl;
}