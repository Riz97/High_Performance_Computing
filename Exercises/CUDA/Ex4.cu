#include <stdio.h>

//2D grid

__global__ void matrixAdd(float a[N][N],float b[N][N],float c[N][N])
{
    //every thread compute an element
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    int j =  blockIdx.y * blockDim.y + threadIdx.y;

    c[i][j] = a[i][j] + b[i][j]
    
}

int main(){

    dim3 blocksPerGrid(N/16,N/16); // 1 block per grid  , only one block
    dim3 threadsPerBlock(16,16);// NxN threads per blocks , inside this block we have NxN threads
    matrixAdd<<<blocksPerGrid,threadsPerBlock>>>(a,b,c);
}