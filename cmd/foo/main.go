package main

import (
	"fmt"

	"github.com/danilo-gemoli/foobar/pkg/foo"
	"github.com/danilo-gemoli/foobar/pkg/version"
)

func main() {
	fmt.Printf("%s\n", foo.SayFoo())
	fmt.Printf("v%s\n", version.Version)
}
