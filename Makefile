
.DEFAULT_GOAL := all
all: public/main.wasm wasi.wasm

.PHONY: wasm_exec.js
wasm_exec.js:
	cp $(shell tinygo env TINYGOROOT)/targets/wasm_exec.js public/

public/main.wasm: public/wasm_exec.js main.go
	tinygo build -o public/main.wasm -target wasm ./main.go

wasi.wasm: main.go
	tinygo build -o wasi.wasm -target wasi ./main.go
