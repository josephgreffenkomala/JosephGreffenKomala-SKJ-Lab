# Variables
CXX := g++
CXXFLAGS := -o
TARGET := tasks1
SRC := tasks1.cpp

# Targets
all: $(TARGET)
	./$(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(SRC) $(CXXFLAGS) $(TARGET)

.PHONY: clean

clean:
	$(RM) $(TARGET) $(TARGET).exe

#
#all: tasks1 
#	./tasks1 
#
#tasks1: tasks1.cpp 
#	g++ tasks1.cpp -o tasks1
#
#clean: rm tasks1.exe