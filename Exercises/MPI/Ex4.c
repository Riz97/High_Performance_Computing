#include <stdio.h>
#include <mpi.h>

int main(int argc ,char* argv[]){

    int rank,size,i = 0 ;

    MPI_Status status;
    MPI_Init(&argc,&argv);
    MPI_Comm_rank(MPI_COMM_WORLD,&rank);//The ID of the processes
    MPI_Comm_size(MPI_COMM_WORLD,&size);
    



       printf("I am process %d and i'm waiting for everybody\n", rank);
     MPI_Barrier(MPI_COMM_WORLD);
  
     


 if (rank == 0) printf("I am the boss and we are out of the barrier\n");



    MPI_Finalize();

    return 0;
}