all: main.o lodepng.o image.o
	gcc main.o -o main

image.o: image.c lodepng.h
	gcc -c image.c

lodepng.o: lodepng.c lodepng.h
	gcc -c lodepng.c

clean:
	rm -f *.o
