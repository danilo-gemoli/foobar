#!/bin/sh

version="$(date '+%Y%m%dT%H%M%S')-$(git rev-parse HEAD)"
go install -ldflags "-X 'github.com/danilo-gemoli/foobar/pkg/version.Version=${version}'" ./cmd/foo/...
