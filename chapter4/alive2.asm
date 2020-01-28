; alive2.asm
extern printf	; declare the function as extreal
section .data
	msg1 	db "Hello, World!",0
	msg2	db "Alive and Kicking!",0
	radius	dd 357
	pi	dq 3.14
	fmtstr	db "%s",10,0 ; printformat
	fmtflt	db "%lf",10,0
	fmtint 	db "%d",10,0
section .bss
section .text
	global main
main:
	push 	rbp
	mov  	rbp, rsp

	;;  print msg1
	mov	rdx, 0
	mov	rdi, fmtstr
	mov	rsi, msg1
	call	printf
	;; print msg2
	mov	rdx, 0
	mov	rdi, fmtstr
	mov	rsi, msg2
	call	printf
	;; print msg2
	mov	rdx, 0
	mov	rdi, fmtstr
	mov	rsi, msg2
	call	printf

	;; print msg2
	mov	rdx, 0
	mov	rdi, fmtstr
	mov	rsi, msg2
	call	printf
	
	mov	rsp, rbp
	pop	rbp

	ret

