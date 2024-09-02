
all: tasks2 

tasks1: tasks2.cpp 
	g++ tasks2.cpp -o tasks1

run : tasks2
	./tasks2

dump: tasks2
	objdump -d tasks2.exe > tasks2.asm
clean: 
	del tasks2.asm tasks2.exe