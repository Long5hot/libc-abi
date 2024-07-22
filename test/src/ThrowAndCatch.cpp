#include "throw.h"
#include <stdio.h>

// Fake_exception to catch.
struct Fake_Exception {};

namespace std {
  void terminate() {
  }
}

void raise() { throw Exception(); }

void try_but_dont_catch() {
  try {
    raise();
  } catch (Fake_Exception &) {
    printf("Running try_but_dont_catch::catch(Fake_Exception)\n");
  }

  printf("try_but_dont_catch handled an Exception and resumed execution");
}

// And also what happens when it does
void catchit() {
  try {
    try_but_dont_catch();
  } catch (Exception &) {
    printf("Running try_but_dont_catch::catch(Exception)\n");
  } catch (Fake_Exception &) {
    printf("Running try_but_dont_catch::catch(Fake_Exception)\n");
  }

  printf("catchit handled an exception and resumed execution");
}

extern "C" {

void ThrowAndCatch() { catchit(); }
}
