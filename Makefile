test.out: hello.cpp main.cpp
	@$(CXX) -g -Wall $(CXXFLAGS) $^ -o $@

test: test.out
	@./test.out

format:
	@clang-format -i *.cpp

clean:
	@rm -f *.out


ls
