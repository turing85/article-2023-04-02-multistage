#!/usr/bin/env bash
set -e

podman build \
  --file ../../Containerfile \
  --target alpine-runner \
  --tag hello-world:alpine \
  ../../