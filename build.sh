#!/usr/bin/env bash

go install go.k6.io/xk6/cmd/xk6@latest

xk6 build --with github.com/grafana/xk6-exec@latest

./k6 version
