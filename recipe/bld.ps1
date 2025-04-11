$env:CARGO_PROFILE_RELEASE_STRIP = "symbols"

dir /w
cd crates\uv

cargo install `
    --no-track `
    --locked `
    --path . `
    --profile release `
    --root "%LIBRARY_PREFIX%" `
    || exit 1


# cargo-bundle-licenses `
#     --format yaml `
#     --output "%SRC_DIR%\THIRDPARTY.yml" `
#     || exit 3