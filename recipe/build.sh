#!/bin/bash

cargo --version
cargo clean

cargo install --features libvips \
              --locked \
              --path . \
              --profile release \
              --root "$PREFIX"