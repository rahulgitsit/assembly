# Simple x86 assembly codes

commands:
1. nasm -f elf32 -o <filename.o> <filename.asm>
2. ld -m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -o <filename> -lc <filename.o>
3. ./filename
