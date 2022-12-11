#ifndef MATMUL_BASIC_C
#define MATMUL_BASIC_C
// Do basic matrix multiplication
void matmul_basic (float A[NN], float B[NN], float C[NN]) {
    for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
        C[i*N + j] = 0;
        for (int k = 0; k < N; k++){
            C[i*N + j] += A[i*N + k] * B[k*N + j];
        }
    }
    }
}
#endif
