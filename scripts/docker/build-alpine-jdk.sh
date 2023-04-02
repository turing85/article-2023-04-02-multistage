#!/usr/bin/env bash
set -e

docker build \
  --file ../../Containerfile \
  --target alpine-jdk-runner \
  --tag hello-world:alpine-jdk \
  ../../