build:
	gcc main.c -Werror -Wall --std=c89 -Wpedantic -O2 -o main	

check:	build
	echo "Hello, world!" > file.tmp 
	./main > file2.tmp
	diff file.tmp file2.tmp
	rm file.tmp file2.tmp	

hello:
	echo "Hello, world!"


nowarn:
	gcc main.c -w
