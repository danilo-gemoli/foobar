#!/bin/sh

version="staging-$(date '+%Y%m%dT%H%M%S')-$(git rev-parse HEAD)"
go build -ldflags "-X 'github.com/danilo-gemoli/foobar/pkg/version.Version=${version}'" -o $BIN_DIR/foo ./cmd/foo/...
