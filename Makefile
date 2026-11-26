DIRS := $(patsubst %/Makefile,%,$(wildcard */*/Makefile))

test:
	@set -e; for d in $(DIRS); do echo "== $$d"; $(MAKE) -s -C $$d test; done

clean:
	@for d in $(DIRS); do $(MAKE) -s -C $$d clean; done

.PHONY: test clean
