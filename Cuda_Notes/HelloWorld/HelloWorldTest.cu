# Date : 2023/04/20 
# Author : Fangjun Wen 
# Function : Test Cuda Toolkit 

#include <iostream>

__global__ void kernel( void ) {
	printf( "Hello, World!\n" );
}

int main( void ) {
	kernel<<<1,1>>>();

	return 0;
}