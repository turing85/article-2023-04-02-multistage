#!/usr/bin/env bash
set -e

podman build \
  --file ../../Containerfile \
  --target distroless-runner \
  --tag hello-world:distroless \
  ../../