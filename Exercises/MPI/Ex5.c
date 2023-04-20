#include <stdio.h>
#include <mpi.h>


//In this example, root process will sum up the value 
// that each process preserves.

int main(int argc,char **argv ){

    int size,rank;

    int localdata;

    int reduction_result;

    const int root = 0;


    MPI_Init(&argc,&argv);
    MPI_Comm_rank(MPI_COMM_WORLD,&rank);//The ID of the processes
    MPI_Comm_size(MPI_COMM_WORLD,&size);

    localdata = rank*2+1;

    printf("[Process %d]: has local data %d \n",rank,localdata);

    MPI_Reduce(&localdata,&reduction_result,1,MPI_INT,MPI_SUM,root,MPI_COMM_WORLD);

    if(rank == root)
    {
        printf("Reduction result is %d and it is inside process %d\n",reduction_result ,rank);
    }

    MPI_Finalize();

    return 0;


}