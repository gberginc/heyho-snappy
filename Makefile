libmylib:
	mkdir -p lib/x86_64-linux-gnu
	gcc -shared -o lib/x86_64-linux-gnu/libmylib.so -fPIC src/mylib.c

main: libmylib
	gcc -o bin/main src/main.c -lmylib -L lib/x86_64-linux-gnu/
