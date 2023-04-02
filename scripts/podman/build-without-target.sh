#!/usr/bin/env bash
set -e

podman build \
  --file ../../Containerfile \
  --tag hello-world:without-target \
  ../../