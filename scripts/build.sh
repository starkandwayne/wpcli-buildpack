#!/usr/bin/env bash
set -exuo pipefail

cd "$( dirname "${BASH_SOURCE[0]}" )/.."
source .envrc

GOOS=linux go build -ldflags="-s -w" -o bin/supply wpcli/supply/cli
GOOS=linux go build -ldflags="-s -w" -o bin/finalize wpcli/finalize/cli
