void matmul(float A[NN], float B[NN], float C[NN]) {
    for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
        C[i*N + j] = 0;
        for (int k16 = 0; k16 < N; k16 += 16) {
            C[i*N + j] += A[i*N + k16 + 0] * B[(k16 + 0)*N + j];
            C[i*N + j] += A[i*N + k16 + 1] * B[(k16 + 1)*N + j];
            C[i*N + j] += A[i*N + k16 + 2] * B[(k16 + 2)*N + j];  
            C[i*N + j] += A[i*N + k16 + 3] * B[(k16 + 3)*N + j];
            C[i*N + j] += A[i*N + k16 + 4] * B[(k16 + 4)*N + j];
            C[i*N + j] += A[i*N + k16 + 5] * B[(k16 + 5)*N + j];
            C[i*N + j] += A[i*N + k16 + 6] * B[(k16 + 6)*N + j];  
            C[i*N + j] += A[i*N + k16 + 7] * B[(k16 + 7)*N + j];
            C[i*N + j] += A[i*N + k16 + 8] * B[(k16 + 8)*N + j];
            C[i*N + j] += A[i*N + k16 + 9] * B[(k16 + 9)*N + j];
            C[i*N + j] += A[i*N + k16 + 10] * B[(k16 + 10)*N + j];  
            C[i*N + j] += A[i*N + k16 + 11] * B[(k16 + 11)*N + j];
            C[i*N + j] += A[i*N + k16 + 12] * B[(k16 + 12)*N + j];
            C[i*N + j] += A[i*N + k16 + 13] * B[(k16 + 13)*N + j];
            C[i*N + j] += A[i*N + k16 + 14] * B[(k16 + 14)*N + j];  
            C[i*N + j] += A[i*N + k16 + 15] * B[(k16 + 15)*N + j];
        }
    }
    }
}
