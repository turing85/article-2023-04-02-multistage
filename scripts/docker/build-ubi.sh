#!/usr/bin/env bash
set -e

docker build \
  --file ../../Containerfile \
  --target ubi-runner \
  --tag hello-world:ubi \
  ../../