#include <stdio.h>
float A[NN];
float B[NN];
float C[NN];
float A_basic[NN];
float B_basic[NN];
float C_basic[NN];
#define SAMPLES 10
int test_indices[SAMPLES][2] = {
	{0, 1},
	{7, 1},
	{12, 9},
	{9, 9},
	{30, 10},
	{66, 66},
	{0, 15},
	{N-1, 1},
	{0, N-1},
	{12, 84},
};

void initialize_array(float A[NN], float B[NN]) {
	int i = 0;
	// Initialize arrays with randomized, fixed values
	for (i = 0; i < NN; i++) {
		A[i] = (i*3) / NN;
		B[i] = (i*5 + 2) / NN;
	}
}

int check_implementation() {
	int errors = 0;
	for (int s = 0; s < SAMPLES; s++) {
		int i = test_indices[s][0];
		int j = test_indices[s][1];
		if (C_basic[i*N + j] != C[i*N + j]) {
			printf("Essig bei sample %i\n", s);
			errors ++;
		}
	}
	return errors;
}

