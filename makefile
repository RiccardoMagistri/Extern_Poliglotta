all: main

clean: project main.o italian.o english.o
	rm -f main main.o italian.o english.o

main: main.o italian.o english.o
	gcc -o main main.o italian.o english.o

main.o: main.c
	gcc -c -o main.o main.c

italian.o: italian.c
	gcc -c -o italian.o italian.c
	
english.o: english.c
	gcc -c -o english.o english.c