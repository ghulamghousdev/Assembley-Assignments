;Student Name: Ghulam Ghous
;Student Roll Number: 2018-CS-31
;Task Name: Task-1.asm
;Task Description:Ali travels from city A to B, B to C and C to D. Write a program which asks Ali to enter the 
;distance he travelled from City A to B, B to C and C to D in miles. Program should be able to display total travelled 
;distance (from City A to D) in meters. One mile is equal to 1 Kilo meter and 600 meters. 1km = 1000 meters.
;Dont forget to explain the code using comments


; you code goes here
;//

INCLUDE Irvine32.inc

.data
;Variable to store distance from A to B
distance1 dword ?

;Variable to store distance from B to C
distance2 dword ?

;Variable to store distance from C to D
distance3 dword ?

;Variable to store total distance from A to D
totalDistance dword 0

;Variable to store Total distance from A to D in meters
DistanceInMeters dword 1600

;Strings to tell the user what to enter
AB byte "Give distance from A to B",0
BC byte "Give distance from B to C",0
CD byte "Give distance from C to D",0

;code segment
.code
main PROC

;moving 0 to register to avoid any garbage value
mov eax,0

;moving string to edx register 
mov edx,offset AB
;printing the instruction to tell user what to do
call WriteString
call CRLF
call ReadInt
mov distance1,eax

;moving string to edx register 
mov edx,offset BC
;printing the instruction to tell user what to do
call WriteString
call CRLF
call ReadInt
mov distance2,eax

;moving string to edx register 
mov edx,offset CD
;printing the instruction to tell user what to do
call WriteString
call CRLF
call ReadInt
mov distance3,eax

mov eax,0
mov eax,distance1 ;moving distance1 to reg
add eax,distance2 ;adding distance2 to reg
add eax,distance3 ;adding distance3 to reg

mov totalDistance,eax

;conbverting total distance to meters
mul distanceInMeters ;converting into meters
call writeint




;call WriteInt
call ReadInt
exit
main ENDP
END main

