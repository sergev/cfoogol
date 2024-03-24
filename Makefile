CFLAGS  = -O -Wall -Werror

all:    fc

clean:
	rm -f *.o fc test test.c

fc:     fc.o
	$(CC) $(LDFLAGS) $< -o $@

fc.o:   fc.c fc.h
	$(CC) $(CFLAGS) -c fc.c

test:   test.foo fc
	./fc test.foo
	$(CC) test.c -o $@
