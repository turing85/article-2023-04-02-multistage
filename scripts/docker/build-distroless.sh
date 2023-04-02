#!/usr/bin/env bash
set -e

docker build \
  --file ../../Containerfile \
  --target distroless-runner \
  --tag hello-world:distroless \
  ../../