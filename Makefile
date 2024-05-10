CC = gcc
tgoogle: main.o
	$(CC) main.o -o tgoogle

main.o: main.c
	$(CC) -c main.c

clean:
	rm *.o

install:
	mv tgoogle /usr/local/bin

uninstall:
	rm /usr/local/bin/tgoogle
