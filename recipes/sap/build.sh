#!/bin/sh
set -e

./bootstrap
./configure --prefix="${PREFIX}"
make -j ${CPU_COUNT}
make install
