#!/usr/bin/env bash
set -e

podman build \
  --file ../../Containerfile \
  --target ubi-runner \
  --tag hello-world:ubi \
  ../../