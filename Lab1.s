/*
File: Lab1.s
Author: Lane Wright

To Run:
as -o Lab1.o Lab1.s -g
gcc -o Lab1 Lab1.o -g
./Lab1

To Dubug after compiled:
gdb ./Lab1
 */


.global main

main:
    ldr r0, =strWelcomeMessage
    bl printf






exit:
    mov r7, #0x01
    svc 0

.data

.balign 4
strWelcomeMessage: .asciz "Please input 10 numbers (enter a number then hit enter, etc.)\n"

.balign 4
strPrint: .asciz "Array 1: %d, Array 2: %d, Array 3: %d\n"

.balign 16
array1: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 200

.balign 4
array2: .word -10, -9, -8, -7, -6, -5, -4, -3, -2, -1

.balign 4
array3: .word

.balign 4
intInput: .word 0

.global printf

.global scanf
