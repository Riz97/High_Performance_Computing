#include <stdio.h>


//Number of blocks , number of threads per block
//<<<1,1>>>
//<<<1,10>>>
//<<<10,1>>>
//<<<10,10>>>




__global__ void GPUFunction()
{
    printf("This is running in parallel.\n");
}

int main()
{
    GPUFunction <<<5,5>>>();
    cudaDeviceSynchronization();
}