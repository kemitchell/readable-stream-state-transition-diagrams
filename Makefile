GRAPHS=$(wildcard *.dot)
TARGETS=$(GRAPHS:.dot=.png)

all: $(TARGETS)

%.png: %.dot
	dot -Tpng -o $@ $<
