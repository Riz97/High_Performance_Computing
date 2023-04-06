#include <stdio.h>


//Number of blocks , number of threads per block
//<<<1,1>>> print This is running in parallel. one time
//<<<1,10>>> print this is running in parallel ten times
//<<<10,1>>> print this is running in parallel ten times
//<<<10,10>>> print this is running in parallel one hundred times , 10 threads per 10 blocks = 100 execution of that line




__global__ void GPUFunction()
{
    printf("This is running in parallel.\n");
}

int main()
{
    GPUFunction <<<10,10>>>();
      cudaDeviceSynchronize();
}
