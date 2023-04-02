#!/usr/bin/env bash
set -e

./build-without-target.sh
./build-alpine.sh
./build-alpine-jdk.sh
./build-distroless.sh
./build-ubi.sh