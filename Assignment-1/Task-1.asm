;Student Name: Ghulam Ghous
;Student Roll Number: 2018-CS-31
;Task Name: Task-1
;Task Description: Write Assembly program which takes a number N from user. Print following pattern using loops upto Nth line
;Dont forget to explain the code using comments


; you code goes here
Include Irvine32.inc
.data
;declaring a variable of dword type to store the input from user which tells the number
number dword ?

;String for user prompt
userPromt byte "Enter a number: ",0

;Variable to store count for loop1
count dword ?

;variable to store count for loop2
count1 dword ?


.code
main proc


mov edx, offset userPromt	; Moving the string to edx register
call writestring		;Printing the instruction for the user to enter a number
call readint			;Taking input from user
mov ecx, eax			;Moving number into count register for loop
mov count1,0			;Moving zero into count variable for inner loop
Loop1:
	inc count1			;incrementing the count variable for inner loop
	mov count,ecx		;Moving loop count into count variable from count register
	mov ecx,count1		;Moving count1 into count register for loop
	mov eax,count1		;Moving count1 into eax register to print the number
	Loop2:	
		call writeint	;Printing the number stored in eax register
		LOOP Loop2		
		call crlf		;instruction for new line
		mov ecx,count	;moving count of outer loop into ecx register
	LOOP Loop1
	call readint
exit
main endp
end main

