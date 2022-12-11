void matmul(float A[NN], float B[NN], float C[NN]) {
    for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
        C[i*N + j] = 0;
	for (int k4 = 0; k4 < N; k4 += 4) {
	    C[i*N + j] += A[i*N + k4 + 0] * B[(k4 + 0)*N + j];
	    C[i*N + j] += A[i*N + k4 + 1] * B[(k4 + 1)*N + j];
	    C[i*N + j] += A[i*N + k4 + 2] * B[(k4 + 2)*N + j];  
	    C[i*N + j] += A[i*N + k4 + 3] * B[(k4 + 3)*N + j];
	}
    }
    }
}
