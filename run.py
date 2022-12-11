from os import system

methods = [
	#"basic",
	#"swap",
	"unroll_full",
	#"unroll2", #4
	#"unroll3", #8
	#"unroll4", #16
	#"unroll5", #32
]

def make_code(N, method):
	NN = N * N
	code = f'#define N {N}\n'
	code += f'#define NN {NN}\n'
	code += '#include "define.h"\n'
	code += '#include "basic.c"\n'
	code += f'#include "matmul_{method}.c"\n'
	code += '#include "main.c"\n'
	return code

#flags = "-g -O3"
flags = "-Wall"
def run(N, method):
	code = make_code(N, method)
	#print(code)
	with open("run.c", "w") as file:
		file.write(code)
	#input("GCC!")
	gcc = system(f"gcc {flags} -o run run.c")
	if gcc:
		print("gcc failed!")
		return 1
	#input("SRUN")
	#print(N, method, end='\t', flush=True)
	system(f"srun ./run {method}")

def main():
	for n_order in range(7, 10):
		N = 2 ** n_order
		for method in methods:
			if run(N, method):
				return 1

if __name__ == "__main__":
	main()
