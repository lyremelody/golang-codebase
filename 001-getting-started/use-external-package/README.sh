#!/bin/sh

go mod init use-external-packag

# set goproxy in china
./use-goproxy-cn.sh

go mod tidy

go run use-external-package.go
