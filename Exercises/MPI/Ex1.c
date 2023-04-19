#include <stdio.h>
#include <mpi.h>


void main(int argc ,char* argv[]){

    int err;

//Hello world is printed the amount of time equal to the amount of processes wanted. 

    err = MPI_Init(&argc,&argv);
    printf("Hello world!\n");
    err = MPI_Finalize();

}