#include <time.h>
#include <string.h>

#define RUNS 10

int debug = 1;

double measure(
	void (*func)(float [NN], float[NN], float[NN]), 
	float A[NN], float B[NN], float C[NN],
	const char* method
) {
	struct timespec start, stop;

	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);

	func(A, B, C);

	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &stop);

	double result = (stop.tv_sec - start.tv_sec) * 1e6 
		+ (stop.tv_nsec - start.tv_nsec) / 1e3;
	// in microseconds
	// then to seconds
	if (debug)
		printf("%i\t%s\t%f\n", N, method, result / 1e6);
	return result / 1e6;
}

double measure_average(
	void (*func)(float [NN], float[NN], float[NN]), 
	float A[NN], float B[NN], float C[NN],
	int runs, const char* method
) {
	double sum = 0;
	
	for (int i=0; i < runs; i++)
		sum += measure(func, A, B, C, method);

	return sum / ((double) runs);
}

int main(int argc, const char* argv[]) {
	const char* method = "method";
	if (argc > 1) {
		method = argv[1];
	}

	void (*func) (float [NN], float [NN], float [NN]) = matmul;
	if (strcmp(method, "basic") == 0)
		func = matmul_basic;

	initialize_array(A, B);
	initialize_array(A_basic, B_basic);
	matmul_basic(A_basic, B_basic, C_basic);
	measure_average(func, A, B, C, 10, method);

	//printf("basic\t%9.6f\t%s\t%9.6f\n", s_basic, method, s);

	return check_implementation();
}
