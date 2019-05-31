run: run.out
	./run.out
run.out: main.cc
	g++ -o run.out main.cc add.cc

test: test.out
	./test.out
test.out: test.cc
	g++ -o test.out test.cc add.cc -lgtest -lpthread

clean:
	rm ./*.out ./*.o

