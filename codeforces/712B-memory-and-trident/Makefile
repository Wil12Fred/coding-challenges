CXX      ?= g++
CXXFLAGS ?= -std=c++11 -O2 -Wall

all: 712b

712b: 712b.cc
	$(CXX) $(CXXFLAGS) -o $@ $<

test: 712b
	@test "$$(echo RRU  | ./712b)" = "-1"
	@test "$$(echo UDUR | ./712b)" = "1"
	@test "$$(echo RUUR | ./712b)" = "2"
	@echo "all samples pass"

clean:
	rm -f 712b

.PHONY: all test clean
