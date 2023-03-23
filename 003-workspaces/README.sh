#!/bin/sh

mkdir workspace
cd workspace/
mkdir hello
cd hello/
go mod init example.com/hello
go get golang.org/x/example
go run example.com/hello
cd ../
go work init ./hello
vi go.work 
go run go.work 
go run hello
go run example.com/hello
cd 003-workspaces/workspace
git clone https://go.googlesource.com/example
go work use ./example
cat go.work 
cd hello/
go run example.com/hello
go get golang.org/x/example@v0.1.0
