
#--reservation=p_lv_eti2223_797 
salloc:
	salloc -n 1 -c 1 -t 03:00:00 -p haswell -A p_lv_eti2223 --exclusive
basic: basic.c main.c
	$(CC) -o basic $^
run_basic: basic
	srun ./basic
