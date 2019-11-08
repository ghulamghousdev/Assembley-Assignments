;Student Name: Ghulam Ghous
;Student Roll Number: 2018-cs-31
;Task Name: task-2
;Task Description:
;Dont forget to explain the code using comments


; you code goes here
; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

Include Irvine32.inc

.data
;Variable to get score from user
prompt1 byte "Enter your first score : ",0
prompt2 byte "Enter your second score : ",0
prompt3 byte "Enter your third score : ",0
;Strings to store grades of student
str1 byte "your grade is A  ",0
str2 byte "your grade is B  ",0
str3 byte "your grade is C  ",0
str4 byte "your grade is D  ",0

; vaiables to hold the entered values

score1 dword ?
score2 dword ?
score3 dword ?

;variables used during calculations
sum dword 0
divide dword 3
avg dword ?

t1 dword 90
t2 dword 70
t3 dword 50

.code
main proc
	;Asking user to input a score
	mov	edx,offset prompt1
	call writestring

	call readint ;Taking input from user
	mov scr1,eax

	mov edx, offset prompt2
	call writestring

	call readint
	mov scr2,eax

	mov edx,offset prompt3
	call writestring

	call readint
	mov scr3,eax
	;Adding all the scores
	mov eax,score1
	add sum,eax
	mov eax,score2
	add sum,eax
	mov eax,score3
	add sum,eax			;sum contains the sum of all 3 scores


	mov eax,sum
	mov edx,0
	div divide

	mov avg,eax			;the average of 3 numbers is
	
	mov edx,avg
	mov eax,t1
	cmp edx,eax
	;Checking conditions
	jg L1

	mov eax,t2
	cmp edx,eax
	jg L2

	mov eax,t3
	cmp edx,eax
	jg L3

	cmp edx,eax
	jl L4

	L1:	;when avg is greater then 90
		mov edx,offset str1	;
		call writestring
		jmp M
	L2:	;when avg is greater then 70 and less then 89
		mov edx,offset str2
		call writestring
		jmp M
	L3:;when avg is greater then 50 and less then 70
		mov edx,offset str3
		call writestring
		jmp M
	L4:;when avg is greater less then 50
		mov edx,offset str4
		call writestring
		jmp M
	M:

	call readint
	exit
main endp
end main
