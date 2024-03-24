CFLAGS  = -O -Wall -Werror

all:    fc

clean:
	rm -f *.o fc primes primes.c hello hello.c beer beer.c

fc:     fc.o
	$(CC) $(LDFLAGS) $< -o $@

fc.o:   fc.c fc.h
	$(CC) $(CFLAGS) -c fc.c

primes: primes.foo fc
	./fc primes.foo
	$(CC) primes.c -o $@

hello:   hello.foo fc
	./fc hello.foo
	$(CC) hello.c -o $@

beer:   beer.foo fc
	./fc beer.foo
	$(CC) beer.c -o $@
