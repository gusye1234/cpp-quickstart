BASE_DIR=.
# LIB=-L$(BASE_DIR)/lib -l<YOUR LIB>
INC=-I$(BASE_DIR)/include
FLAGS=-std=c++14

build/hello: src/hello.cpp
	g++ $(FLAGS) $(INC) -o $@ $^  $(LIB)

.PHONY: clean
clean:
	rm build/*