package main

import (
	"os"
)

func main() {
	os.Stdout.Write([]byte("Hello, World"))
}

//export add
func add(x, y int) int {
	return x + y
}
