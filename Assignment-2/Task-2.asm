;Student Name:
;Student Roll Number:
;Task Name:
;Task Description:
;Dont forget to explain the code using comments


; you code goes here
;//

INCLUDE Irvine32.inc

.data

;variable to store years
years dword ?

;variable to store months
months dword ?

;variable to store days
days dword ?

;variable to store total hours
hours dword ?

;variable to store total months in a year
monthsInYear dword 12

;variable to store total days in a month
daysInmonth dword 30

;variable to store hours of a day
hoursInDay dword 24

; Strings to tell user what to Enter 
string1 byte "Put years ",0
string2 byte "Put Months",0
string3 byte "Put Days",0
string4 byte "The total hours of the given age is:",0


.code
main PROC

;moving 0 to register to avoid any garbage value
mov eax,0

;moving string to edx register 
mov edx,offset string1
;printing the instruction to tell user what to do
call WriteString
call CRLF
;Taking input from user
call ReadInt
mov years,eax

;moving string to edx register 
mov edx,offset string2
;printing the instruction to tell user what to do
call WriteString
call CRLF
;Taking input from user
call ReadInt
mov months,eax

;moving string to edx register 
mov edx,offset string3
;printing the instruction to tell user what to do
call WriteString
call CRLF
;Taking input from user
call ReadInt
mov days,eax

mov eax,0
mov eax,years 
mul monthsInYear ;calculating months from given years
add eax,months ;Adding given months to  calculated months
mul daysInMonth ;calculating days

add eax,days ;adding days to calculated days
mul hoursInDay ;calculating hours
;moving string to edx register 
mov edx,offset string4
;printing the instruction to tell user what to do
call WriteString
call CRLF
call writeint ;printing the result to console
call ReadInt
exit
main ENDP
END main
