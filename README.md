![GithubHeader](https://user-images.githubusercontent.com/37477845/92315782-e1255d80-f025-11ea-80e0-e62fc08c7a1e.gif)
# NVIDIA-CUDA-NOTES
NVIDIA CUDA NOTES. <br>
Run Cuda programs with CUDA Toolkit on windows command line. 

Compile .cu programs by   
```bash
nvcc xxx.cu -o xxx 
```


### CUDA NOTES SERIES 
- CUDA - [HelloWorld](https://github.com/Think-Big-Do-Small/NVIDIA-CUDA-NOTES/blob/2ca6e51b8b4a3c1a849d915b0231e1e1ea4885e6/Cuda_Notes/HelloWorld/HelloWorldTest.cu)
```bash
#include <iostream>

__global__ void kernel( void ) {
	printf( "Hello, World!\n" );
}

int main( void ) {
	kernel<<<1,1>>>();
	return 0;
}
```
- CUDA - [Add Two Numbers ](https://github.com/Think-Big-Do-Small/NVIDIA-CUDA-NOTES/blob/2ca6e51b8b4a3c1a849d915b0231e1e1ea4885e6/Cuda_Notes/Add/AddTwoNumbersTest.cu)
```bash 
__global__ void add(int *a, int *b, int *c)
{
	*c = *a + *b; 
}

void get_add_result(int a, int b, int & c)
{
	int *dev_a, *dev_b, *dev_c; // device copies of a, b, c
	int size = sizeof( int ); // we need space for an integer
	// allocate device copies of a, b, c
	cudaMalloc( (void**)&dev_a, size );
	cudaMalloc( (void**)&dev_b, size );
	cudaMalloc( (void**)&dev_c, size );

	// copy inputs to device
	cudaMemcpy( dev_a, &a, size, cudaMemcpyHostToDevice );
	cudaMemcpy( dev_b, &b, size, cudaMemcpyHostToDevice );
	// launch add() kernel on GPU, passing parameters
	add<<< 1, 1 >>>( dev_a, dev_b, dev_c );
	cudaDeviceSynchronize();
	
	// copy device result back to host copy of c
	cudaMemcpy( &c, dev_c, size, cudaMemcpyDeviceToHost );

	cudaFree( dev_a ); cudaFree( dev_b ); cudaFree( dev_c );
}
```

### About Me 
- Computer Science, Master, Shenzhen University
- I am a software engineer 
- I am familar with computer languages, like c++,java,python,c,matlab,html,css,jquery
- I am familar with databases such as mysql, postgresql
- I am familar with flask, apache tomcat
- I am familar with libraries opencv, caffe, keras, tensorflow, openvino
- I am familar with gpu libraries like cuda, cudnn
- I am recently doing some image segmentation projects with c++, python and cuda <br> background matting etc. <br> 

### About Software Development Experience
- RabbitRun(smart file packaging with high speed and efficiency)  <br> 
visit site: www.aizaozhidao.vip/tuzikuaipao 

- AI早知道(ai related projects for demostration) <br> 
visit site: www.aizaozhidao.vip 
