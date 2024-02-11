all: report
report: main.o temp_function.o
	gcc *.o -o report
main.o: main.c temp_function.c temp_function.h
	gcc -c main.c temp_function.c
temp_function.o: temp_function.c temp_function.h
	gcc -c temp_function.c
clean:
	rm -rf *.o report
