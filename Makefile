CC=g++

all: calculator oleh_super_calculator_lib.a
calculator: calculator.o oleh_super_calculator.o main.o
	$(CC) calculator.o oleh_super_calculator.o main.o -o $@
oleh_super_calculator_lib.a: oleh_super_calculator.o
	ar -rcs oleh_super_calculator_lib.a oleh_super_calculator.o
calculator.o: calculator.cpp calculator.h
	$(CC) -c calculator.cpp
oleh_super_calculator.o: oleh_super_calculator.cpp calculator.h
	$(CC) -c oleh_super_calculator.cpp
main.o: main.cpp calculator.h
	$(CC) -c main.cpp
clean:
	rm -rf *.o calculator oleh_super_calculator_lib.a
