CC = gcc
tgoogle: main.o
	$(CC) main.o -o tgoogle

main.o: main.c
	$(CC) -c main.c

install:
	mv tgoogle /usr/local/bin

uninstall:
	rm /usr/local/bin/tgoogle
