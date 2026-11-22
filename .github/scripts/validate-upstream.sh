#!/usr/bin/env bash
set -euo pipefail
git submodule update --init --recursive
cargo fmt --all -- --check
cargo clippy --locked --workspace --all-targets --all-features -- -D warnings
cargo test --locked --workspace
cargo run --locked -p pumpkin-tester
