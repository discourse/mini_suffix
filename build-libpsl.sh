#! /bin/bash

set -e
export DEBIAN_FRONTEND=noninteractive
cd $(dirname ${BASH_SOURCE[0]})/libpsl

# A rough script to build libpsl from source, and move the binary to the /vendor directory.
# 
# On linux, you will need a number of dependencies:
# apt-get update
# apt-get install -y meson gcc clang libtool llvm-dev valgrind python3 python3-setuptools libicu-dev
#
# On macOS, run this script in the homebrew build environment using `brew sh -c ./build-libpsl.sh`
#
# If you're running this, make sure to update the binaries for all other architectures as well

rm -rf builddir
meson builddir --buildtype=release -Druntime=no -Dbuiltin=libicu
ninja -C builddir
ninja -C builddir test

if [[ "$OSTYPE" == "darwin"* ]]; then
  cp builddir/src/libpsl.dylib ../vendor/libpsl.darwin-$(arch).dylib
else
  cp builddir/src/libpsl.so ../vendor/libpsl.$(arch).so
fi

echo "Done $(arch)"
