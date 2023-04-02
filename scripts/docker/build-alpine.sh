#!/usr/bin/env bash
set -e

docker build \
  --file ../../Containerfile \
  --target alpine-runner \
  --tag hello-world:alpine \
  ../../