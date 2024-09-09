
all: tasks1 

tasks1: tasks1.cpp 
	g++ tasks1.cpp -o tasks1

run : tasks1
	./tasks1

dump: tasks1
	objdump -d tasks1.exe > tasks1.asm
clean: 
	del tasks1.asm tasks1.exe