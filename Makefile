.DEFAULT_GOAL := all

build:
	$(shell BIN_DIR=bin hack/build.sh)
.PHONY: build

test:
	go test ./...
.PHONY: test

clean:
	$(shell test -d bin/ && rm -rf bin/)
.PHONY: clean

all: clean test build
.PHONY: all
