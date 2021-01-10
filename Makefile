AR=ar
FLAGS= -Wall -g

all: libmyBank.a mains
mains: main.o libmyBank.a
	gcc $(FLAGS) -o mains main.o libmyBank.a
libmyBank.a: myBank.o 
	$(AR) -rcs libmyBank.a myBank.o
main.o: main.c ‏‏myBank.h
	gcc $(FLAGS) -c main.c
myBank.o: myBank.c ‏‏myBank.h
	gcc $(FLAGS) -c myBank.c

.PHONY: clean all

clean:
	rm -f *.o *.a mains
