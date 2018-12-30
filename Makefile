all: main.c say.c
	gcc -E say.c > say-preprocessor-out.c # generate preprocessor output
	gcc -S say.c # generate assembly from say.c
	gcc -c say.s # generate object file from say assembly
	gcc -E main.c > main-preprocessor-out.c # generate preprocessor output
	gcc -S main.c # generate assembly from main.c
	gcc -c main.s # generate object file from main assembly
	gcc main.o say.o -o hello # combine the two object files into a hello exectuable
	gcc -g main.c say.c -o hello-debug # combine the two object files into a hello exectuable with debug symbols

clean:
	rm -rf hello *.o *.s *-preprocessor-out.c hello-debug*
