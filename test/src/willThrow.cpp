#include "throw.h"

extern "C" {

void willThrow() { throw Exception(); }
}
