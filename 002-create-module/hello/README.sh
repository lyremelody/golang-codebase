#!/bin/sh

go mod init examples.com/hello

go mod edit -replace example.com/greetings=../greetings

go mod tidy

go run hello.go
