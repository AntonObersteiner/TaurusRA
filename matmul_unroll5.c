void matmul(float A[NN], float B[NN], float C[NN]) {
    for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
        C[i*N + j] = 0;
        for (int k32 = 0; k32 < N; k32 += 32) {
            C[i*N + j] += A[i*N + k32 + 0] * B[(k32 + 0)*N + j];
            C[i*N + j] += A[i*N + k32 + 1] * B[(k32 + 1)*N + j];
            C[i*N + j] += A[i*N + k32 + 2] * B[(k32 + 2)*N + j];  
            C[i*N + j] += A[i*N + k32 + 3] * B[(k32 + 3)*N + j];
            C[i*N + j] += A[i*N + k32 + 4] * B[(k32 + 4)*N + j];
            C[i*N + j] += A[i*N + k32 + 5] * B[(k32 + 5)*N + j];
            C[i*N + j] += A[i*N + k32 + 6] * B[(k32 + 6)*N + j];  
            C[i*N + j] += A[i*N + k32 + 7] * B[(k32 + 7)*N + j];
            C[i*N + j] += A[i*N + k32 + 8] * B[(k32 + 8)*N + j];
            C[i*N + j] += A[i*N + k32 + 9] * B[(k32 + 9)*N + j];
            C[i*N + j] += A[i*N + k32 + 10] * B[(k32 + 10)*N + j];  
            C[i*N + j] += A[i*N + k32 + 11] * B[(k32 + 11)*N + j];
            C[i*N + j] += A[i*N + k32 + 12] * B[(k32 + 12)*N + j];
            C[i*N + j] += A[i*N + k32 + 13] * B[(k32 + 13)*N + j];
            C[i*N + j] += A[i*N + k32 + 14] * B[(k32 + 14)*N + j];  
            C[i*N + j] += A[i*N + k32 + 15] * B[(k32 + 15)*N + j];
            C[i*N + j] += A[i*N + k32 + 16] * B[(k32 + 16)*N + j];
            C[i*N + j] += A[i*N + k32 + 17] * B[(k32 + 17)*N + j];
            C[i*N + j] += A[i*N + k32 + 18] * B[(k32 + 18)*N + j];  
            C[i*N + j] += A[i*N + k32 + 19] * B[(k32 + 19)*N + j];
            C[i*N + j] += A[i*N + k32 + 20] * B[(k32 + 20)*N + j];
            C[i*N + j] += A[i*N + k32 + 21] * B[(k32 + 21)*N + j];
            C[i*N + j] += A[i*N + k32 + 22] * B[(k32 + 22)*N + j];  
            C[i*N + j] += A[i*N + k32 + 23] * B[(k32 + 23)*N + j];
            C[i*N + j] += A[i*N + k32 + 24] * B[(k32 + 24)*N + j];
            C[i*N + j] += A[i*N + k32 + 25] * B[(k32 + 25)*N + j];
            C[i*N + j] += A[i*N + k32 + 26] * B[(k32 + 26)*N + j];  
            C[i*N + j] += A[i*N + k32 + 27] * B[(k32 + 27)*N + j];
            C[i*N + j] += A[i*N + k32 + 28] * B[(k32 + 28)*N + j];
            C[i*N + j] += A[i*N + k32 + 29] * B[(k32 + 29)*N + j];
            C[i*N + j] += A[i*N + k32 + 30] * B[(k32 + 30)*N + j];  
            C[i*N + j] += A[i*N + k32 + 31] * B[(k32 + 31)*N + j];
        }
    }
    }
}
