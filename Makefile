all: main.o libadd.so
	g++ -L. -ladd -o main main.o libadd.so
main.o: main.cpp
	g++ -c main.cpp
add.o: add.cpp
	g++ -c -fPIC add.cpp -o add.o
libadd.so: add.o
	g++ -shared -o libadd.so add.o

	