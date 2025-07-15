#!/bin/bash

mkdir -p $PREFIX/bin

cd $SRC_DIR

for i in guppy pplacer rppr ; do
    if [ "$(uname)" == "Linux" ]; then
        cp $i.exe $PREFIX/bin
        ln -s $PREFIX/bin/$i.exe $PREFIX/bin/$i
    else
        cp $i $PREFIX/bin
    fi
done


cp -r scripts $PREFIX/bin

chmod +x $PREFIX/bin/{guppy,pplacer,rppr}
