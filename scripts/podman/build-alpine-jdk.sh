#!/usr/bin/env bash
set -e

podman build \
  --file ../../Containerfile \
  --target alpine-jdk-runner \
  --tag hello-world:alpine-jdk \
  ../../