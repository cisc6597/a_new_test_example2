#define CATCH_CONFIG_MAIN
#include "catch.h"
#include <sstream>
#include <string>

void sayHello(std::ostream &os);

TEST_CASE("Hello") {
  std::stringstream ss;
  sayHello(ss);
  std::string s = ss.str();
  CHECK(s == "Hello world!");
}