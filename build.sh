#!/usr/bin/env bash

go install go.k6.io/xk6/cmd/xk6@latest

rm -rf ~/go/pkg/mod/github.com/nc-gcz

rm ./k6.exe

ls -alh ~/go/pkg/mod/github.com/nc-gcz || true

go clean -cache

echo "Building..."

xk6 build --with github.com/nc-gcz/xk6-exec@0.6.0

./k6 version
