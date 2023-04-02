#!/usr/bin/env bash
set -e

docker build \
  --file ../../Containerfile \
  --tag hello-world:without-target \
  ../../