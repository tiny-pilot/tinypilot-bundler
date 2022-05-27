#!/bin/bash

# “Mock” version of the eventual `get-tinypilot.sh` script.
# Instead of downloading the installation bundle on the fly, it expects a
# tarball named `tinypilot.tar` to be present in the same directory.

# Exit on first error.
set -e

# Echo commands to stdout.
set -x

readonly TEMP_FOLDER="$(mktemp -d)"

# Extract tarball to temporary folder and run install.
tar -xf tinypilot.tar -C "${TEMP_FOLDER}"
pushd "${TEMP_FOLDER}"
chmod +x install
./install
popd

# Clean up.
rm -rf "${TEMP_FOLDER}"
