EXES = omp_homework_serial  omp_homework_parallel
CFLAGS = -fopenmp -O2 -qopt-report=2 
CC = icc

all: $(EXES)

omp_homework_serial: omp_homework_serial.c 
		$(CC) $(CFLAGS) -o $@ $^ 

omp_homework_parallel : omp_homework_parallel.c
		$(CC) $(CFLAGS) -o $@ $^ 

clean :
	rm -f $(EXES)