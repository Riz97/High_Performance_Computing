#include <stdio.h>

void CPUFunction()
{
    printf("Hello World from the CPU\n");
}

__global__ void GPUFunction()
{
    printf("Hello World from the GPU \n");

}


int main(){
    CPUFunction();
    GPUFunction<<<1,1>>>();
    cudaDeviceSynchronize();
}