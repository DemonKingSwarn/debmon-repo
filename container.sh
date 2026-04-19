#!/usr/bin/env bash

podman run -it --rm \
  -v $(pwd):/work \
  -v $HOME/.local/share/gnupg:/root/.gnupg \
  -w /work \
  ubuntu:24.04 bash
