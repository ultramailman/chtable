CC=g++
CFLAGS+=-std=c++11 -pedantic-errors -Wstrict-aliasing=0 -Wall -g -O2
	
all: a.out

install:
	mkdir -p /usr/include/chtable
	cp src/chtable.hpp /usr/include/chtable
	cp src/matrix_hash.hpp /usr/include/chtable
	cp src/hash_mixer.hpp /user/include/chtable

a.out:  src/test_chtable.o
	$(CC) -o $@ $<


src/test_chtable.o: src/test_chtable.cpp src/chtable.hpp src/hash_mixer.hpp src/matrix_hash.hpp

%.o: %.cpp
	$(CC) $< $(CFLAGS) -c -o $@
