#!/bin/bash

make
make install


mkdir -p $PREFIX/bin

ls -lR

cd $SRC_DIR
cp guppy pplacer rppr $PREFIX/bin
chmod +x $PREFIX/bin/{guppy,pplacer,rppr}
