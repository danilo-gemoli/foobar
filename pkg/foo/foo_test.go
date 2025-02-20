package foo_test

import (
	"testing"

	"github.com/danilo-gemoli/foobar/pkg/foo"
)

func TestSayFoo(t *testing.T) {
	wantFoo := "foo"
	fooStr := foo.SayFoo()
	if fooStr != wantFoo {
		t.Errorf("want %s but got %s\n", wantFoo, fooStr)
	}
}
