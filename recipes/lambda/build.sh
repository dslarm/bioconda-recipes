#!/bin/bash
set -xe
#if [ $(uname -s) == Darwin -a $(uname -m) != arm64 ]; then
if [ $(uname -s) == Darwin ]; then
    # See https://conda-forge.org/docs/maintainer/knowledge_base.html#newer-c-features-with-old-sdk
#    export CXXFLAGS="${CXXFLAGS} -std=c++23"
#    export CXXFLAGS="${CXXFLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"
#    wget https://github.com/seqan/sharg-parser/releases/download/1.1.1/sharg-1.1.1-Source.tar.xz
#    tar xvf sharg-1.1.1-Source.tar.xz
    #    cp -r sharg-1.1.1-Source/* submodules/sharg-parser
    cp -r llvm-sharg/* submodules/sharg-parser
fi
mkdir -p "$PREFIX/bin"
mkdir -p build
cd build
cmake -DLAMBDA_NATIVE_BUILD=0 ..
make
cp bin/lambda3 "$PREFIX/bin/"
