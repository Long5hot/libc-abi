all: app

ThrowAndCatch.o: ThrowAndCatch.cpp ../include/throw.h
		g++ -fverbose-asm -masm=intel -D_GLIBCXX_DEBUG -c -o ThrowAndCatch.o -I../include/ -O0 ThrowAndCatch.cpp

cppabi.o: ../../abi/libc++abi.cpp
		g++ -fverbose-asm -masm=intel -D_GLIBCXX_DEBUG -c -o cppabi.o -O0 ../../abi/libc++abi.cpp

main.o: main.c
		gcc -fverbose-asm -masm=intel -D_GLIBCXX_DEBUG -c -o main.o -I../include/ -O0 main.c

app: main.o cppabi.o ThrowAndCatch.o
		gcc main.o cppabi.o ThrowAndCatch.o -O0 -o app

throw.gas: ThrowAndCatch.cpp
		g++ -c ThrowAndCatch.cpp -masm=intel -fverbose-asm -I../include/ -Wa,-adhls > throw.gas

throw.s: ThrowAndCatch.cpp
		g++ -S ThrowAndCatch.cpp -masm=intel -fverbose-asm -I../include/

.PHONY: clean run
clean:
	rm -f main.o ThrowAndCatch.o cppabi.o app

run: app
	./app

debug:
	g++ -fverbose-asm -masm=intel -D_GLIBCXX_DEBUG -c -o ThrowAndCatch.o -I../include/ -O0 ThrowAndCatch.cpp -g
	g++ -fverbose-asm -masm=intel -D_GLIBCXX_DEBUG -c -o cppabi.o -O0 ../../abi/libc++abi.cpp -g
	gcc -fverbose-asm -masm=intel -D_GLIBCXX_DEBUG -c -o main.o -I../include/ -O0 main.c -g
	gcc main.o cppabi.o ThrowAndCatch.o -O0 -o app -g
