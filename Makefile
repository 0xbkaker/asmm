run: main
	fasm  main.asm && ld main.o -o main && ./main
