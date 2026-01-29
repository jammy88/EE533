#include <cuda_runtime.h>
#include <stdio.h>

__global__ void conv2d_cuda(
    unsigned int *image,
    int *filter,
    int *output,
    int M,
    int N
) {
    int x = blockIdx.y * blockDim.y + threadIdx.y;
    int y = blockIdx.x * blockDim.x + threadIdx.x;

    int pad = N / 2;

    if (x < M && y < M) {
        int sum = 0;

        for (int u = 0; u < N; u++) {
            for (int v = 0; v < N; v++) {
                int ix = x + u - pad;
                int iy = y + v - pad;
                if (ix >= 0 && ix < M && iy >= 0 && iy < M) {
                    sum += image[ix * M + iy] * filter[u * N + v];
                }
            }
        }
        output[x * M + y] = sum;  // 不 clamp
    }
}

extern "C"
void conv2d_cuda_gpu(
    unsigned int *h_img,
    int *h_filt,
    int *h_out,
    int M,
    int N
) {
    size_t img_size  = M * M * sizeof(unsigned int);
    size_t filt_size = N * N * sizeof(int);
    size_t out_size  = M * M * sizeof(int);

    unsigned int *d_img;
    int *d_filt;
    int *d_out;

    cudaMalloc(&d_img, img_size);
    cudaMalloc(&d_filt, filt_size);
    cudaMalloc(&d_out, out_size);

    cudaMemcpy(d_img, h_img, img_size, cudaMemcpyHostToDevice);
    cudaMemcpy(d_filt, h_filt, filt_size, cudaMemcpyHostToDevice);

    dim3 block(16,16);
    dim3 grid((M+15)/16, (M+15)/16);

    conv2d_cuda<<<grid, block>>>(d_img, d_filt, d_out, M, N);
    cudaDeviceSynchronize();

    cudaMemcpy(h_out, d_out, out_size, cudaMemcpyDeviceToHost);

    cudaFree(d_img);
    cudaFree(d_filt);
    cudaFree(d_out);
}
