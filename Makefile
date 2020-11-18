main.out: hello.cpp main.cpp
	@$(CXX) -g -Wall $(CXXFLAGS) $^ -o $@

test: main.out
	@./main.out

format:
	@clang-format -i *.cpp

clean:
	@rm -f *.out
