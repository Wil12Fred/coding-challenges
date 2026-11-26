CXX      ?= g++
CXXFLAGS ?= -std=c++11 -O2 -Wall

PROG := 712b
BIN  := bin/$(PROG)

all: $(BIN)

$(BIN): $(PROG).cc
	@mkdir -p bin
	$(CXX) $(CXXFLAGS) -o $@ $<

# Golden tests: each tests/N.in is fed to the program on stdin and the output
# must match tests/N.out exactly.
test: $(BIN)
	@set -e; n=0; for f in tests/*.in; do \
	  if ./$(BIN) < $$f | diff -u $${f%.in}.out - ; then n=$$((n+1)); \
	  else echo "FAIL: $$f"; exit 1; fi; \
	done; echo "$$n samples pass"

clean:
	rm -rf bin

.PHONY: all test clean
