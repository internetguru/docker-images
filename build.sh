#!/bin/bash

[[ -z "${1}" ]] \
  && echo "Missing folder param" >&2 \
  && exit 2

sudo docker buildx build "${1}" --platform "linux/arm64,linux/amd64" -t "internetguru/${1}:latest" --push --no-cache

