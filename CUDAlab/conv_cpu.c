#include <stdio.h>
#include <stdlib.h>

void conv2d_cpu(
    unsigned int *image,
    int *filter,
    unsigned int *output,
    int M, int N
) {
    int pad = N / 2;

    for (int i = 0; i < M; i++) {
        for (int j = 0; j < M; j++) {
            int sum = 0;
            for (int u = 0; u < N; u++) {
                for (int v = 0; v < N; v++) {
                    int x = i + u - pad;
                    int y = j + v - pad;
                    if (x >= 0 && x < M && y >= 0 && y < M) {
                        sum += image[x*M + y] * filter[u*N + v];
                    }
                }
            }
            if (sum < 0) sum = 0;
            if (sum > 255) sum = 255;
            output[i*M + j] = (unsigned int)sum;
        }
    }
}
