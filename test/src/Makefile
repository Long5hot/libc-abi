all: app

ThrowAndCatch.o: ThrowAndCatch.cpp ../include/throw.h
		clang++ -c -o ThrowAndCatch.o -I../include/ -O0 -g3 ThrowAndCatch.cpp

cppabi.o: ../../abi/libc++abi.cpp
		clang++ -c -o cppabi.o -O0 -g3 ../../abi/libc++abi.cpp

main.o: main.c
		clang -c -o main.o -I../include/ -O0 -g3 main.c

app: main.o cppabi.o ThrowAndCatch.o
		clang main.o cppabi.o ThrowAndCatch.o -O0 -g3 -o app

throw.gas: ThrowAndCatch.cpp
		g++ -c ThrowAndCatch.cpp -g -Wa,-adhls > throw.gas

throw.s: ThrowAndCatch.cpp
		g++ -S ThrowAndCatch.cpp

.PHONY: clean run
clean:
	rm -f main.o ThrowAndCatch.o cppabi.o app

run: app
		./app
