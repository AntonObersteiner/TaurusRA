
run:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b8 <_init>:
_init():
  4004b8:	48 83 ec 08          	sub    $0x8,%rsp
  4004bc:	48 8b 05 1d 2b 00 00 	mov    0x2b1d(%rip),%rax        # 402fe0 <__gmon_start__>
  4004c3:	48 85 c0             	test   %rax,%rax
  4004c6:	74 05                	je     4004cd <_init+0x15>
  4004c8:	e8 33 00 00 00       	call   400500 <__gmon_start__@plt>
  4004cd:	48 83 c4 08          	add    $0x8,%rsp
  4004d1:	c3                   	ret    

Disassembly of section .plt:

00000000004004e0 <__libc_start_main@plt-0x10>:
  4004e0:	ff 35 0a 2b 00 00    	push   0x2b0a(%rip)        # 402ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004e6:	ff 25 0c 2b 00 00    	jmp    *0x2b0c(%rip)        # 402ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004ec:	90                   	nop
  4004ed:	90                   	nop
  4004ee:	90                   	nop
  4004ef:	90                   	nop

00000000004004f0 <__libc_start_main@plt>:
  4004f0:	ff 25 0a 2b 00 00    	jmp    *0x2b0a(%rip)        # 403000 <__libc_start_main@GLIBC_2.2.5>
  4004f6:	68 00 00 00 00       	push   $0x0
  4004fb:	e9 e0 ff ff ff       	jmp    4004e0 <_init+0x28>

0000000000400500 <__gmon_start__@plt>:
  400500:	ff 25 02 2b 00 00    	jmp    *0x2b02(%rip)        # 403008 <__gmon_start__>
  400506:	68 01 00 00 00       	push   $0x1
  40050b:	e9 d0 ff ff ff       	jmp    4004e0 <_init+0x28>

0000000000400510 <printf@plt>:
  400510:	ff 25 fa 2a 00 00    	jmp    *0x2afa(%rip)        # 403010 <printf@GLIBC_2.2.5>
  400516:	68 02 00 00 00       	push   $0x2
  40051b:	e9 c0 ff ff ff       	jmp    4004e0 <_init+0x28>

0000000000400520 <clock_gettime@plt>:
  400520:	ff 25 f2 2a 00 00    	jmp    *0x2af2(%rip)        # 403018 <clock_gettime@GLIBC_2.17>
  400526:	68 03 00 00 00       	push   $0x3
  40052b:	e9 b0 ff ff ff       	jmp    4004e0 <_init+0x28>

Disassembly of section .text:

0000000000400530 <_start>:
_start():
  400530:	31 ed                	xor    %ebp,%ebp
  400532:	49 89 d1             	mov    %rdx,%r9
  400535:	5e                   	pop    %rsi
  400536:	48 89 e2             	mov    %rsp,%rdx
  400539:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40053d:	50                   	push   %rax
  40053e:	54                   	push   %rsp
  40053f:	49 c7 c0 00 0d 40 00 	mov    $0x400d00,%r8
  400546:	48 c7 c1 90 0c 40 00 	mov    $0x400c90,%rcx
  40054d:	48 c7 c7 e6 0b 40 00 	mov    $0x400be6,%rdi
  400554:	e8 97 ff ff ff       	call   4004f0 <__libc_start_main@plt>
  400559:	f4                   	hlt    
  40055a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400560 <deregister_tm_clones>:
deregister_tm_clones():
  400560:	b8 90 30 40 00       	mov    $0x403090,%eax
  400565:	48 3d 90 30 40 00    	cmp    $0x403090,%rax
  40056b:	74 13                	je     400580 <deregister_tm_clones+0x20>
  40056d:	b8 00 00 00 00       	mov    $0x0,%eax
  400572:	48 85 c0             	test   %rax,%rax
  400575:	74 09                	je     400580 <deregister_tm_clones+0x20>
  400577:	bf 90 30 40 00       	mov    $0x403090,%edi
  40057c:	ff e0                	jmp    *%rax
  40057e:	66 90                	xchg   %ax,%ax
  400580:	c3                   	ret    
  400581:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  400588:	00 00 00 00 
  40058c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400590 <register_tm_clones>:
register_tm_clones():
  400590:	be 90 30 40 00       	mov    $0x403090,%esi
  400595:	48 81 ee 90 30 40 00 	sub    $0x403090,%rsi
  40059c:	48 89 f0             	mov    %rsi,%rax
  40059f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4005a3:	48 c1 f8 03          	sar    $0x3,%rax
  4005a7:	48 01 c6             	add    %rax,%rsi
  4005aa:	48 d1 fe             	sar    %rsi
  4005ad:	74 11                	je     4005c0 <register_tm_clones+0x30>
  4005af:	b8 00 00 00 00       	mov    $0x0,%eax
  4005b4:	48 85 c0             	test   %rax,%rax
  4005b7:	74 07                	je     4005c0 <register_tm_clones+0x30>
  4005b9:	bf 90 30 40 00       	mov    $0x403090,%edi
  4005be:	ff e0                	jmp    *%rax
  4005c0:	c3                   	ret    
  4005c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4005c8:	00 00 00 00 
  4005cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005d0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  4005d0:	f3 0f 1e fa          	endbr64 
  4005d4:	80 3d c5 2a 00 00 00 	cmpb   $0x0,0x2ac5(%rip)        # 4030a0 <completed.0>
  4005db:	75 13                	jne    4005f0 <__do_global_dtors_aux+0x20>
  4005dd:	55                   	push   %rbp
  4005de:	48 89 e5             	mov    %rsp,%rbp
  4005e1:	e8 7a ff ff ff       	call   400560 <deregister_tm_clones>
  4005e6:	c6 05 b3 2a 00 00 01 	movb   $0x1,0x2ab3(%rip)        # 4030a0 <completed.0>
  4005ed:	5d                   	pop    %rbp
  4005ee:	c3                   	ret    
  4005ef:	90                   	nop
  4005f0:	c3                   	ret    
  4005f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4005f8:	00 00 00 00 
  4005fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400600 <frame_dummy>:
frame_dummy():
  400600:	f3 0f 1e fa          	endbr64 
  400604:	eb 8a                	jmp    400590 <register_tm_clones>

0000000000400606 <initialize_array>:
initialize_array():
/home/anob943c/ETI/RA/define.h:22
	{N-1, 1},
	{0, N-1},
	{12, 84},
};

void initialize_array(float A[NN], float B[NN]) {
  400606:	55                   	push   %rbp
  400607:	48 89 e5             	mov    %rsp,%rbp
  40060a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40060e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
/home/anob943c/ETI/RA/define.h:23
	int i = 0;
  400612:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
/home/anob943c/ETI/RA/define.h:25
	// Initialize arrays with randomized, fixed values
	for (i = 0; i < NN; i++) {
  400619:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400620:	eb 7a                	jmp    40069c <initialize_array+0x96>
/home/anob943c/ETI/RA/define.h:26 (discriminator 3)
		A[i] = (i*3) / NN;
  400622:	8b 55 fc             	mov    -0x4(%rbp),%edx
  400625:	89 d0                	mov    %edx,%eax
  400627:	01 c0                	add    %eax,%eax
  400629:	01 d0                	add    %edx,%eax
  40062b:	8d 90 ff 3f 00 00    	lea    0x3fff(%rax),%edx
  400631:	85 c0                	test   %eax,%eax
  400633:	0f 48 c2             	cmovs  %edx,%eax
  400636:	c1 f8 0e             	sar    $0xe,%eax
  400639:	89 c1                	mov    %eax,%ecx
  40063b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40063e:	48 98                	cltq   
  400640:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400647:	00 
  400648:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40064c:	48 01 d0             	add    %rdx,%rax
  40064f:	66 0f ef c0          	pxor   %xmm0,%xmm0
  400653:	f3 0f 2a c1          	cvtsi2ss %ecx,%xmm0
  400657:	f3 0f 11 00          	movss  %xmm0,(%rax)
/home/anob943c/ETI/RA/define.h:27 (discriminator 3)
		B[i] = (i*5 + 2) / NN;
  40065b:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40065e:	89 d0                	mov    %edx,%eax
  400660:	c1 e0 02             	shl    $0x2,%eax
  400663:	01 d0                	add    %edx,%eax
  400665:	83 c0 02             	add    $0x2,%eax
  400668:	8d 90 ff 3f 00 00    	lea    0x3fff(%rax),%edx
  40066e:	85 c0                	test   %eax,%eax
  400670:	0f 48 c2             	cmovs  %edx,%eax
  400673:	c1 f8 0e             	sar    $0xe,%eax
  400676:	89 c1                	mov    %eax,%ecx
  400678:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40067b:	48 98                	cltq   
  40067d:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400684:	00 
  400685:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400689:	48 01 d0             	add    %rdx,%rax
  40068c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  400690:	f3 0f 2a c1          	cvtsi2ss %ecx,%xmm0
  400694:	f3 0f 11 00          	movss  %xmm0,(%rax)
/home/anob943c/ETI/RA/define.h:25 (discriminator 3)
	for (i = 0; i < NN; i++) {
  400698:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
/home/anob943c/ETI/RA/define.h:25 (discriminator 1)
  40069c:	81 7d fc ff 3f 00 00 	cmpl   $0x3fff,-0x4(%rbp)
  4006a3:	0f 8e 79 ff ff ff    	jle    400622 <initialize_array+0x1c>
/home/anob943c/ETI/RA/define.h:29
	}
}
  4006a9:	90                   	nop
  4006aa:	90                   	nop
  4006ab:	5d                   	pop    %rbp
  4006ac:	c3                   	ret    

00000000004006ad <check_implementation>:
check_implementation():
/home/anob943c/ETI/RA/define.h:31

void check_implementation() {
  4006ad:	55                   	push   %rbp
  4006ae:	48 89 e5             	mov    %rsp,%rbp
  4006b1:	48 83 ec 10          	sub    $0x10,%rsp
/home/anob943c/ETI/RA/define.h:32
	for (int s = 0; s < SAMPLES; s++) {
  4006b5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4006bc:	eb 70                	jmp    40072e <check_implementation+0x81>
/home/anob943c/ETI/RA/define.h:33
		int i = test_indices[s][0];
  4006be:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4006c1:	48 98                	cltq   
  4006c3:	8b 04 c5 40 30 40 00 	mov    0x403040(,%rax,8),%eax
  4006ca:	89 45 f8             	mov    %eax,-0x8(%rbp)
/home/anob943c/ETI/RA/define.h:34
		int j = test_indices[s][1];
  4006cd:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4006d0:	48 98                	cltq   
  4006d2:	8b 04 c5 44 30 40 00 	mov    0x403044(,%rax,8),%eax
  4006d9:	89 45 f4             	mov    %eax,-0xc(%rbp)
/home/anob943c/ETI/RA/define.h:35
		if (C_basic[i*N + j] != C[i*N + j]) {
  4006dc:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4006df:	c1 e0 07             	shl    $0x7,%eax
  4006e2:	89 c2                	mov    %eax,%edx
  4006e4:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4006e7:	01 d0                	add    %edx,%eax
  4006e9:	48 98                	cltq   
  4006eb:	f3 0f 10 04 85 c0 30 	movss  0x4530c0(,%rax,4),%xmm0
  4006f2:	45 00 
  4006f4:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4006f7:	c1 e0 07             	shl    $0x7,%eax
  4006fa:	89 c2                	mov    %eax,%edx
  4006fc:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4006ff:	01 d0                	add    %edx,%eax
  400701:	48 98                	cltq   
  400703:	f3 0f 10 0c 85 c0 30 	movss  0x4230c0(,%rax,4),%xmm1
  40070a:	42 00 
  40070c:	0f 2e c1             	ucomiss %xmm1,%xmm0
  40070f:	7a 05                	jp     400716 <check_implementation+0x69>
  400711:	0f 2e c1             	ucomiss %xmm1,%xmm0
  400714:	74 14                	je     40072a <check_implementation+0x7d>
/home/anob943c/ETI/RA/define.h:36
			printf("Essig bei sample %i\n", s);
  400716:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400719:	89 c6                	mov    %eax,%esi
  40071b:	bf 18 0d 40 00       	mov    $0x400d18,%edi
  400720:	b8 00 00 00 00       	mov    $0x0,%eax
  400725:	e8 e6 fd ff ff       	call   400510 <printf@plt>
/home/anob943c/ETI/RA/define.h:32 (discriminator 2)
	for (int s = 0; s < SAMPLES; s++) {
  40072a:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
/home/anob943c/ETI/RA/define.h:32 (discriminator 1)
  40072e:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
  400732:	7e 8a                	jle    4006be <check_implementation+0x11>
/home/anob943c/ETI/RA/define.h:39
		}
	}
}
  400734:	90                   	nop
  400735:	90                   	nop
  400736:	c9                   	leave  
  400737:	c3                   	ret    

0000000000400738 <matmul_basic>:
matmul_basic():
/home/anob943c/ETI/RA/basic.c:2
// Do basic matrix multiplication
void matmul_basic (float A[NN], float B[NN], float C[NN]) {
  400738:	55                   	push   %rbp
  400739:	48 89 e5             	mov    %rsp,%rbp
  40073c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400740:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400744:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/home/anob943c/ETI/RA/basic.c:3
    for (int i = 0; i < N; i++) {
  400748:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40074f:	e9 ee 00 00 00       	jmp    400842 <matmul_basic+0x10a>
/home/anob943c/ETI/RA/basic.c:4
    for (int j = 0; j < N; j++) {
  400754:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40075b:	e9 d4 00 00 00       	jmp    400834 <matmul_basic+0xfc>
/home/anob943c/ETI/RA/basic.c:5
        C[i*N + j] = 0;
  400760:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400763:	c1 e0 07             	shl    $0x7,%eax
  400766:	89 c2                	mov    %eax,%edx
  400768:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40076b:	01 d0                	add    %edx,%eax
  40076d:	48 98                	cltq   
  40076f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400776:	00 
  400777:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40077b:	48 01 d0             	add    %rdx,%rax
  40077e:	66 0f ef c0          	pxor   %xmm0,%xmm0
  400782:	f3 0f 11 00          	movss  %xmm0,(%rax)
/home/anob943c/ETI/RA/basic.c:6
        for (int k = 0; k < N; k++){
  400786:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  40078d:	e9 94 00 00 00       	jmp    400826 <matmul_basic+0xee>
/home/anob943c/ETI/RA/basic.c:7 (discriminator 3)
            C[i*N + j] += A[i*N + k] * B[k*N + j];
  400792:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400795:	c1 e0 07             	shl    $0x7,%eax
  400798:	89 c2                	mov    %eax,%edx
  40079a:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40079d:	01 d0                	add    %edx,%eax
  40079f:	48 98                	cltq   
  4007a1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4007a8:	00 
  4007a9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4007ad:	48 01 d0             	add    %rdx,%rax
  4007b0:	f3 0f 10 08          	movss  (%rax),%xmm1
  4007b4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007b7:	c1 e0 07             	shl    $0x7,%eax
  4007ba:	89 c2                	mov    %eax,%edx
  4007bc:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4007bf:	01 d0                	add    %edx,%eax
  4007c1:	48 98                	cltq   
  4007c3:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4007ca:	00 
  4007cb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4007cf:	48 01 d0             	add    %rdx,%rax
  4007d2:	f3 0f 10 10          	movss  (%rax),%xmm2
  4007d6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4007d9:	c1 e0 07             	shl    $0x7,%eax
  4007dc:	89 c2                	mov    %eax,%edx
  4007de:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4007e1:	01 d0                	add    %edx,%eax
  4007e3:	48 98                	cltq   
  4007e5:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4007ec:	00 
  4007ed:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007f1:	48 01 d0             	add    %rdx,%rax
  4007f4:	f3 0f 10 00          	movss  (%rax),%xmm0
  4007f8:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
  4007fc:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007ff:	c1 e0 07             	shl    $0x7,%eax
  400802:	89 c2                	mov    %eax,%edx
  400804:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400807:	01 d0                	add    %edx,%eax
  400809:	48 98                	cltq   
  40080b:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400812:	00 
  400813:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400817:	48 01 d0             	add    %rdx,%rax
  40081a:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  40081e:	f3 0f 11 00          	movss  %xmm0,(%rax)
/home/anob943c/ETI/RA/basic.c:6 (discriminator 3)
        for (int k = 0; k < N; k++){
  400822:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
/home/anob943c/ETI/RA/basic.c:6 (discriminator 1)
  400826:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%rbp)
  40082a:	0f 8e 62 ff ff ff    	jle    400792 <matmul_basic+0x5a>
/home/anob943c/ETI/RA/basic.c:4 (discriminator 2)
    for (int j = 0; j < N; j++) {
  400830:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
/home/anob943c/ETI/RA/basic.c:4 (discriminator 1)
  400834:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%rbp)
  400838:	0f 8e 22 ff ff ff    	jle    400760 <matmul_basic+0x28>
/home/anob943c/ETI/RA/basic.c:3 (discriminator 2)
    for (int i = 0; i < N; i++) {
  40083e:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
/home/anob943c/ETI/RA/basic.c:3 (discriminator 1)
  400842:	83 7d fc 7f          	cmpl   $0x7f,-0x4(%rbp)
  400846:	0f 8e 08 ff ff ff    	jle    400754 <matmul_basic+0x1c>
/home/anob943c/ETI/RA/basic.c:11
        }
    }
    }
}
  40084c:	90                   	nop
  40084d:	90                   	nop
  40084e:	5d                   	pop    %rbp
  40084f:	c3                   	ret    

0000000000400850 <matmul>:
matmul():
/home/anob943c/ETI/RA/matmul_unroll.c:1
void matmul(float A[NN], float B[NN], float C[NN]) {
  400850:	55                   	push   %rbp
  400851:	48 89 e5             	mov    %rsp,%rbp
  400854:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400858:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40085c:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/home/anob943c/ETI/RA/matmul_unroll.c:2
    for (int i = 0; i < N; i++) {
  400860:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400867:	e9 b3 02 00 00       	jmp    400b1f <matmul+0x2cf>
/home/anob943c/ETI/RA/matmul_unroll.c:3
    for (int j = 0; j < N; j++) {
  40086c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  400873:	e9 99 02 00 00       	jmp    400b11 <matmul+0x2c1>
/home/anob943c/ETI/RA/matmul_unroll.c:4
        C[i*N + j] = 0;
  400878:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40087b:	c1 e0 07             	shl    $0x7,%eax
  40087e:	89 c2                	mov    %eax,%edx
  400880:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400883:	01 d0                	add    %edx,%eax
  400885:	48 98                	cltq   
  400887:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40088e:	00 
  40088f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400893:	48 01 d0             	add    %rdx,%rax
  400896:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40089a:	f3 0f 11 00          	movss  %xmm0,(%rax)
/home/anob943c/ETI/RA/matmul_unroll.c:5
	for (int k4 = 0; k4 < N; k4 += 4) {
  40089e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  4008a5:	e9 59 02 00 00       	jmp    400b03 <matmul+0x2b3>
/home/anob943c/ETI/RA/matmul_unroll.c:6 (discriminator 3)
	    C[i*N + j] += A[i*N + k4 + 0] * B[(k4 + 0)*N + j];
  4008aa:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4008ad:	c1 e0 07             	shl    $0x7,%eax
  4008b0:	89 c2                	mov    %eax,%edx
  4008b2:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4008b5:	01 d0                	add    %edx,%eax
  4008b7:	48 98                	cltq   
  4008b9:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4008c0:	00 
  4008c1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4008c5:	48 01 d0             	add    %rdx,%rax
  4008c8:	f3 0f 10 08          	movss  (%rax),%xmm1
  4008cc:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4008cf:	c1 e0 07             	shl    $0x7,%eax
  4008d2:	89 c2                	mov    %eax,%edx
  4008d4:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4008d7:	01 d0                	add    %edx,%eax
  4008d9:	48 98                	cltq   
  4008db:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4008e2:	00 
  4008e3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008e7:	48 01 d0             	add    %rdx,%rax
  4008ea:	f3 0f 10 10          	movss  (%rax),%xmm2
  4008ee:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4008f1:	c1 e0 07             	shl    $0x7,%eax
  4008f4:	89 c2                	mov    %eax,%edx
  4008f6:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4008f9:	01 d0                	add    %edx,%eax
  4008fb:	48 98                	cltq   
  4008fd:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400904:	00 
  400905:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400909:	48 01 d0             	add    %rdx,%rax
  40090c:	f3 0f 10 00          	movss  (%rax),%xmm0
  400910:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
  400914:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400917:	c1 e0 07             	shl    $0x7,%eax
  40091a:	89 c2                	mov    %eax,%edx
  40091c:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40091f:	01 d0                	add    %edx,%eax
  400921:	48 98                	cltq   
  400923:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40092a:	00 
  40092b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40092f:	48 01 d0             	add    %rdx,%rax
  400932:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  400936:	f3 0f 11 00          	movss  %xmm0,(%rax)
/home/anob943c/ETI/RA/matmul_unroll.c:7 (discriminator 3)
	    C[i*N + j] += A[i*N + k4 + 1] * B[(k4 + 1)*N + j];
  40093a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40093d:	c1 e0 07             	shl    $0x7,%eax
  400940:	89 c2                	mov    %eax,%edx
  400942:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400945:	01 d0                	add    %edx,%eax
  400947:	48 98                	cltq   
  400949:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400950:	00 
  400951:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400955:	48 01 d0             	add    %rdx,%rax
  400958:	f3 0f 10 08          	movss  (%rax),%xmm1
  40095c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40095f:	c1 e0 07             	shl    $0x7,%eax
  400962:	89 c2                	mov    %eax,%edx
  400964:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400967:	01 d0                	add    %edx,%eax
  400969:	48 98                	cltq   
  40096b:	48 83 c0 01          	add    $0x1,%rax
  40096f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400976:	00 
  400977:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40097b:	48 01 d0             	add    %rdx,%rax
  40097e:	f3 0f 10 10          	movss  (%rax),%xmm2
  400982:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400985:	83 c0 01             	add    $0x1,%eax
  400988:	c1 e0 07             	shl    $0x7,%eax
  40098b:	89 c2                	mov    %eax,%edx
  40098d:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400990:	01 d0                	add    %edx,%eax
  400992:	48 98                	cltq   
  400994:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40099b:	00 
  40099c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4009a0:	48 01 d0             	add    %rdx,%rax
  4009a3:	f3 0f 10 00          	movss  (%rax),%xmm0
  4009a7:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
  4009ab:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4009ae:	c1 e0 07             	shl    $0x7,%eax
  4009b1:	89 c2                	mov    %eax,%edx
  4009b3:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4009b6:	01 d0                	add    %edx,%eax
  4009b8:	48 98                	cltq   
  4009ba:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4009c1:	00 
  4009c2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4009c6:	48 01 d0             	add    %rdx,%rax
  4009c9:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  4009cd:	f3 0f 11 00          	movss  %xmm0,(%rax)
/home/anob943c/ETI/RA/matmul_unroll.c:8 (discriminator 3)
	    C[i*N + j] += A[i*N + k4 + 2] * B[(k4 + 2)*N + j];  
  4009d1:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4009d4:	c1 e0 07             	shl    $0x7,%eax
  4009d7:	89 c2                	mov    %eax,%edx
  4009d9:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4009dc:	01 d0                	add    %edx,%eax
  4009de:	48 98                	cltq   
  4009e0:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4009e7:	00 
  4009e8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4009ec:	48 01 d0             	add    %rdx,%rax
  4009ef:	f3 0f 10 08          	movss  (%rax),%xmm1
  4009f3:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4009f6:	c1 e0 07             	shl    $0x7,%eax
  4009f9:	89 c2                	mov    %eax,%edx
  4009fb:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4009fe:	01 d0                	add    %edx,%eax
  400a00:	48 98                	cltq   
  400a02:	48 83 c0 02          	add    $0x2,%rax
  400a06:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400a0d:	00 
  400a0e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400a12:	48 01 d0             	add    %rdx,%rax
  400a15:	f3 0f 10 10          	movss  (%rax),%xmm2
  400a19:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400a1c:	83 c0 02             	add    $0x2,%eax
  400a1f:	c1 e0 07             	shl    $0x7,%eax
  400a22:	89 c2                	mov    %eax,%edx
  400a24:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400a27:	01 d0                	add    %edx,%eax
  400a29:	48 98                	cltq   
  400a2b:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400a32:	00 
  400a33:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400a37:	48 01 d0             	add    %rdx,%rax
  400a3a:	f3 0f 10 00          	movss  (%rax),%xmm0
  400a3e:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
  400a42:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a45:	c1 e0 07             	shl    $0x7,%eax
  400a48:	89 c2                	mov    %eax,%edx
  400a4a:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400a4d:	01 d0                	add    %edx,%eax
  400a4f:	48 98                	cltq   
  400a51:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400a58:	00 
  400a59:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400a5d:	48 01 d0             	add    %rdx,%rax
  400a60:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  400a64:	f3 0f 11 00          	movss  %xmm0,(%rax)
/home/anob943c/ETI/RA/matmul_unroll.c:9 (discriminator 3)
	    C[i*N + j] += A[i*N + k4 + 3] * B[(k4 + 3)*N + j];
  400a68:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a6b:	c1 e0 07             	shl    $0x7,%eax
  400a6e:	89 c2                	mov    %eax,%edx
  400a70:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400a73:	01 d0                	add    %edx,%eax
  400a75:	48 98                	cltq   
  400a77:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400a7e:	00 
  400a7f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400a83:	48 01 d0             	add    %rdx,%rax
  400a86:	f3 0f 10 08          	movss  (%rax),%xmm1
  400a8a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a8d:	c1 e0 07             	shl    $0x7,%eax
  400a90:	89 c2                	mov    %eax,%edx
  400a92:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400a95:	01 d0                	add    %edx,%eax
  400a97:	48 98                	cltq   
  400a99:	48 83 c0 03          	add    $0x3,%rax
  400a9d:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400aa4:	00 
  400aa5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400aa9:	48 01 d0             	add    %rdx,%rax
  400aac:	f3 0f 10 10          	movss  (%rax),%xmm2
  400ab0:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400ab3:	83 c0 03             	add    $0x3,%eax
  400ab6:	c1 e0 07             	shl    $0x7,%eax
  400ab9:	89 c2                	mov    %eax,%edx
  400abb:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400abe:	01 d0                	add    %edx,%eax
  400ac0:	48 98                	cltq   
  400ac2:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400ac9:	00 
  400aca:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400ace:	48 01 d0             	add    %rdx,%rax
  400ad1:	f3 0f 10 00          	movss  (%rax),%xmm0
  400ad5:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
  400ad9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400adc:	c1 e0 07             	shl    $0x7,%eax
  400adf:	89 c2                	mov    %eax,%edx
  400ae1:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400ae4:	01 d0                	add    %edx,%eax
  400ae6:	48 98                	cltq   
  400ae8:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400aef:	00 
  400af0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400af4:	48 01 d0             	add    %rdx,%rax
  400af7:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  400afb:	f3 0f 11 00          	movss  %xmm0,(%rax)
/home/anob943c/ETI/RA/matmul_unroll.c:5 (discriminator 3)
	for (int k4 = 0; k4 < N; k4 += 4) {
  400aff:	83 45 f4 04          	addl   $0x4,-0xc(%rbp)
/home/anob943c/ETI/RA/matmul_unroll.c:5 (discriminator 1)
  400b03:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%rbp)
  400b07:	0f 8e 9d fd ff ff    	jle    4008aa <matmul+0x5a>
/home/anob943c/ETI/RA/matmul_unroll.c:3 (discriminator 2)
    for (int j = 0; j < N; j++) {
  400b0d:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
/home/anob943c/ETI/RA/matmul_unroll.c:3 (discriminator 1)
  400b11:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%rbp)
  400b15:	0f 8e 5d fd ff ff    	jle    400878 <matmul+0x28>
/home/anob943c/ETI/RA/matmul_unroll.c:2 (discriminator 2)
    for (int i = 0; i < N; i++) {
  400b1b:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
/home/anob943c/ETI/RA/matmul_unroll.c:2 (discriminator 1)
  400b1f:	83 7d fc 7f          	cmpl   $0x7f,-0x4(%rbp)
  400b23:	0f 8e 43 fd ff ff    	jle    40086c <matmul+0x1c>
/home/anob943c/ETI/RA/matmul_unroll.c:13
	}
    }
    }
}
  400b29:	90                   	nop
  400b2a:	90                   	nop
  400b2b:	5d                   	pop    %rbp
  400b2c:	c3                   	ret    

0000000000400b2d <measure>:
measure():
/home/anob943c/ETI/RA/main.c:6
#include <time.h>

double measure(
	void (*func)(float [NN], float[NN], float[NN]), 
	float A[NN], float B[NN], float C[NN]
) {
  400b2d:	55                   	push   %rbp
  400b2e:	48 89 e5             	mov    %rsp,%rbp
  400b31:	48 83 ec 50          	sub    $0x50,%rsp
  400b35:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  400b39:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  400b3d:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  400b41:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
/home/anob943c/ETI/RA/main.c:9
	struct timespec start, stop;

	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
  400b45:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400b49:	48 89 c6             	mov    %rax,%rsi
  400b4c:	bf 02 00 00 00       	mov    $0x2,%edi
  400b51:	e8 ca f9 ff ff       	call   400520 <clock_gettime@plt>
/home/anob943c/ETI/RA/main.c:11

	func(A, B, C);
  400b56:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  400b5a:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  400b5e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400b62:	4c 8b 45 c8          	mov    -0x38(%rbp),%r8
  400b66:	48 89 ce             	mov    %rcx,%rsi
  400b69:	48 89 c7             	mov    %rax,%rdi
  400b6c:	41 ff d0             	call   *%r8
/home/anob943c/ETI/RA/main.c:13

	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &stop);
  400b6f:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400b73:	48 89 c6             	mov    %rax,%rsi
  400b76:	bf 02 00 00 00       	mov    $0x2,%edi
  400b7b:	e8 a0 f9 ff ff       	call   400520 <clock_gettime@plt>
/home/anob943c/ETI/RA/main.c:15

	double result = (stop.tv_sec - start.tv_sec) * 1e6 
  400b80:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400b84:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  400b88:	48 29 d0             	sub    %rdx,%rax
  400b8b:	66 0f ef c9          	pxor   %xmm1,%xmm1
  400b8f:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  400b94:	f2 0f 10 05 a4 01 00 	movsd  0x1a4(%rip),%xmm0        # 400d40 <_IO_stdin_used+0x30>
  400b9b:	00 
  400b9c:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
/home/anob943c/ETI/RA/main.c:16
		+ (stop.tv_nsec - start.tv_nsec) / 1e3;
  400ba0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400ba4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400ba8:	48 29 d0             	sub    %rdx,%rax
  400bab:	66 0f ef c0          	pxor   %xmm0,%xmm0
  400baf:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  400bb4:	f2 0f 10 15 8c 01 00 	movsd  0x18c(%rip),%xmm2        # 400d48 <_IO_stdin_used+0x38>
  400bbb:	00 
  400bbc:	f2 0f 5e c2          	divsd  %xmm2,%xmm0
/home/anob943c/ETI/RA/main.c:15
	double result = (stop.tv_sec - start.tv_sec) * 1e6 
  400bc0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  400bc4:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
/home/anob943c/ETI/RA/main.c:19
	// in microseconds
	// then to seconds
	return result / 1e6;
  400bc9:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
  400bce:	f2 0f 10 0d 6a 01 00 	movsd  0x16a(%rip),%xmm1        # 400d40 <_IO_stdin_used+0x30>
  400bd5:	00 
  400bd6:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  400bda:	66 48 0f 7e c0       	movq   %xmm0,%rax
/home/anob943c/ETI/RA/main.c:20
}
  400bdf:	66 48 0f 6e c0       	movq   %rax,%xmm0
  400be4:	c9                   	leave  
  400be5:	c3                   	ret    

0000000000400be6 <main>:
main():
/home/anob943c/ETI/RA/main.c:22

int main(void) {
  400be6:	55                   	push   %rbp
  400be7:	48 89 e5             	mov    %rsp,%rbp
  400bea:	48 83 ec 10          	sub    $0x10,%rsp
/home/anob943c/ETI/RA/main.c:23
	initialize_array(A, B);
  400bee:	be c0 30 41 00       	mov    $0x4130c0,%esi
  400bf3:	bf c0 30 40 00       	mov    $0x4030c0,%edi
  400bf8:	e8 09 fa ff ff       	call   400606 <initialize_array>
/home/anob943c/ETI/RA/main.c:24
	initialize_array(A_basic, B_basic);
  400bfd:	be c0 30 44 00       	mov    $0x4430c0,%esi
  400c02:	bf c0 30 43 00       	mov    $0x4330c0,%edi
  400c07:	e8 fa f9 ff ff       	call   400606 <initialize_array>
/home/anob943c/ETI/RA/main.c:25
	double us_basic = measure(matmul_basic, A_basic, B_basic, C_basic);
  400c0c:	b9 c0 30 45 00       	mov    $0x4530c0,%ecx
  400c11:	ba c0 30 44 00       	mov    $0x4430c0,%edx
  400c16:	be c0 30 43 00       	mov    $0x4330c0,%esi
  400c1b:	bf 38 07 40 00       	mov    $0x400738,%edi
  400c20:	e8 08 ff ff ff       	call   400b2d <measure>
  400c25:	66 48 0f 7e c0       	movq   %xmm0,%rax
  400c2a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
/home/anob943c/ETI/RA/main.c:26
	double us = measure(matmul, A, B, C);
  400c2e:	b9 c0 30 42 00       	mov    $0x4230c0,%ecx
  400c33:	ba c0 30 41 00       	mov    $0x4130c0,%edx
  400c38:	be c0 30 40 00       	mov    $0x4030c0,%esi
  400c3d:	bf 50 08 40 00       	mov    $0x400850,%edi
  400c42:	e8 e6 fe ff ff       	call   400b2d <measure>
  400c47:	66 48 0f 7e c0       	movq   %xmm0,%rax
  400c4c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
/home/anob943c/ETI/RA/main.c:28

	check_implementation();
  400c50:	b8 00 00 00 00       	mov    $0x0,%eax
  400c55:	e8 53 fa ff ff       	call   4006ad <check_implementation>
/home/anob943c/ETI/RA/main.c:30

	printf("basic: %f\tvs: %f\n\n", us_basic, us);
  400c5a:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
  400c5f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400c63:	66 0f 28 c8          	movapd %xmm0,%xmm1
  400c67:	66 48 0f 6e c0       	movq   %rax,%xmm0
  400c6c:	bf 2d 0d 40 00       	mov    $0x400d2d,%edi
  400c71:	b8 02 00 00 00       	mov    $0x2,%eax
  400c76:	e8 95 f8 ff ff       	call   400510 <printf@plt>
  400c7b:	b8 00 00 00 00       	mov    $0x0,%eax
/home/anob943c/ETI/RA/main.c:31
}
  400c80:	c9                   	leave  
  400c81:	c3                   	ret    
  400c82:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
  400c89:	1f 84 00 00 00 00 00 

0000000000400c90 <__libc_csu_init>:
__libc_csu_init():
  400c90:	41 57                	push   %r15
  400c92:	41 89 ff             	mov    %edi,%r15d
  400c95:	41 56                	push   %r14
  400c97:	49 89 f6             	mov    %rsi,%r14
  400c9a:	41 55                	push   %r13
  400c9c:	49 89 d5             	mov    %rdx,%r13
  400c9f:	41 54                	push   %r12
  400ca1:	4c 8d 25 50 21 00 00 	lea    0x2150(%rip),%r12        # 402df8 <__frame_dummy_init_array_entry>
  400ca8:	55                   	push   %rbp
  400ca9:	48 8d 2d 50 21 00 00 	lea    0x2150(%rip),%rbp        # 402e00 <_DYNAMIC>
  400cb0:	53                   	push   %rbx
  400cb1:	4c 29 e5             	sub    %r12,%rbp
  400cb4:	31 db                	xor    %ebx,%ebx
  400cb6:	48 c1 fd 03          	sar    $0x3,%rbp
  400cba:	48 83 ec 08          	sub    $0x8,%rsp
  400cbe:	e8 f5 f7 ff ff       	call   4004b8 <_init>
  400cc3:	48 85 ed             	test   %rbp,%rbp
  400cc6:	74 1e                	je     400ce6 <__libc_csu_init+0x56>
  400cc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400ccf:	00 
  400cd0:	4c 89 ea             	mov    %r13,%rdx
  400cd3:	4c 89 f6             	mov    %r14,%rsi
  400cd6:	44 89 ff             	mov    %r15d,%edi
  400cd9:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  400cdd:	48 83 c3 01          	add    $0x1,%rbx
  400ce1:	48 39 eb             	cmp    %rbp,%rbx
  400ce4:	75 ea                	jne    400cd0 <__libc_csu_init+0x40>
  400ce6:	48 83 c4 08          	add    $0x8,%rsp
  400cea:	5b                   	pop    %rbx
  400ceb:	5d                   	pop    %rbp
  400cec:	41 5c                	pop    %r12
  400cee:	41 5d                	pop    %r13
  400cf0:	41 5e                	pop    %r14
  400cf2:	41 5f                	pop    %r15
  400cf4:	c3                   	ret    
  400cf5:	90                   	nop
  400cf6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400cfd:	00 00 00 

0000000000400d00 <__libc_csu_fini>:
__libc_csu_fini():
  400d00:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400d04 <_fini>:
_fini():
  400d04:	48 83 ec 08          	sub    $0x8,%rsp
  400d08:	48 83 c4 08          	add    $0x8,%rsp
  400d0c:	c3                   	ret    
