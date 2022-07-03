#include <iostream>

extern "C" int MyFunction(int a, int b, int c, int d);

int main()
{
  int a = 10;
  int b = 20;
  int c = 30;
  int d = 18;

  int result = MyFunction(a, b, c, d);

  std::cout << "a = " << a << std::endl;
  std::cout << "b = " << b << std::endl;
  std::cout << "c = " << c << std::endl;
  std::cout << "d = " << d << std::endl;
  std::cout << "result = " << result << std::endl;
}