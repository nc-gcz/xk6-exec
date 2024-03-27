#!/usr/bin/env bash

go install go.k6.io/xk6/cmd/xk6@latest

rm -rf ~/go/pkg/mod/github.com/nc-gcz

ls -alh ~/go/pkg/mod/github.com/nc-gcz || true

go clean -cache

echo "Building..."
sleep 3

xk6 build --with github.com/nc-gcz/xk6-exec@0.1.0

./k6 version
