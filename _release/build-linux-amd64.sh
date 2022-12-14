#!/bin/bash

rm -fr ./bin
export GOOS=linux
export GOARCH=amd64
export BIN_NAME="gdrive_linux_amd64"
export BIN_PATH="./bin"
go build -ldflags '-w -s' -o ${BIN_PATH}/${BIN_NAME}