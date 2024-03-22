#!/usr/bin/env bash

go install go.k6.io/xk6/cmd/xk6@latest

xk6 build --with github.com/nc-gcz/xk6-exec@main

./k6 version
