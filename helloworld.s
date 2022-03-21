#Hello world assembly program

.data

HelloWorldString:
        .ascii "Hello World\n"
.text

.global _start

_start:
        #Load all the arguments required
        movl $4, %eax #4 for write system call from lib/include/asm/stdlib.h
        movl $1, %ebx #fd for STDOUT=1
        movl $HelloWorldString, %ecx #Memory to the actual string
        movl $12, %edx #Number of characters in Hello World
        int $0x80 #Interupt

        #To exit the program
        movl $1, %eax
        movl $0, %ebx
        int $0x80