all: main.c say.c
	clang -E say.c > say-preprocessor-out.c # generate preprocessor output
	clang -S say.c # generate assembly from say.c
	clang -c say.s # generate object file from say assembly
	clang -E main.c > main-preprocessor-out.c # generate preprocessor output
	clang -S main.c # generate assembly from main.c
	clang -c main.s # generate object file from main assembly
	clang main.o say.o -o hello # combine the two object files into a hello exectuable
	clang -g main.c say.c -o hello-debug # combine the two object files into a hello exectuable with debug symbols

clean:
	rm -rf hello *.o *.s *-preprocessor-out.c hello-debug*
