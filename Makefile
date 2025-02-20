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

install: clean test
	$(shell BIN_DIR=bin hack/install.sh)
.PHONY: install

all: clean test build
.PHONY: all
