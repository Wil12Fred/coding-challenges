# Every problem lives in <source>/<id>-<slug>/ with its own Makefile providing
# all / test / clean; these targets discover and run them all.
DIRS := $(patsubst %/Makefile,%,$(wildcard */*/Makefile))

all:
	@set -e; for d in $(DIRS); do $(MAKE) -s -C $$d all; done

test:
	@set -e; for d in $(DIRS); do echo "== $$d"; $(MAKE) -s -C $$d test; done

clean:
	@for d in $(DIRS); do $(MAKE) -s -C $$d clean; done

.PHONY: all test clean
