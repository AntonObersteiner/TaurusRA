void matmul(float A[NN], float B[NN], float C[NN]) {
    for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
        C[i*N + j] = 0;
	for (int k8 = 0; k8 < N; k8 += 8) {
            C[i*N + j] += A[i*N + k8 + 0] * B[(k8 + 0)*N + j];
            C[i*N + j] += A[i*N + k8 + 1] * B[(k8 + 1)*N + j];
            C[i*N + j] += A[i*N + k8 + 2] * B[(k8 + 2)*N + j];  
            C[i*N + j] += A[i*N + k8 + 3] * B[(k8 + 3)*N + j];
            C[i*N + j] += A[i*N + k8 + 4] * B[(k8 + 4)*N + j];
            C[i*N + j] += A[i*N + k8 + 5] * B[(k8 + 5)*N + j];
            C[i*N + j] += A[i*N + k8 + 6] * B[(k8 + 6)*N + j];  
            C[i*N + j] += A[i*N + k8 + 7] * B[(k8 + 7)*N + j];
        }
    }
    }
}
