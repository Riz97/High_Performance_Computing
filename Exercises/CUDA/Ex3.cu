#include <stdio.h>

//1D grid

__global__ void matrixAdd(float a[N][N],float b[N][N],float c[N][N])
{
    //every thread compute an element
    int i = threadIdx.x;
    int j = threadIdx.y;

    c[i][j] = a[i][j] + b[i][j]
    
}

int main(){

    dim3 blocksPerGrid(1); // 1 block per grid  , only one block
    dim3 threadsPerBlock(N,N);// NxN threads per blocks , inside this block we have NxN threads
    matrixAdd<<<blocksPerGrid,threadsPerBlock>>>(a,b,c);
}