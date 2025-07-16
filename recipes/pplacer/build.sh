#!/bin/bash
mkdir -p $PREFIX/bin
set -x -e

ls $PREFIX/lib


cd $SRC_DIR

for i in guppy pplacer rppr ; do
    if [ "$(uname)" == "Linux" ]; then
        cp $i.exe $PREFIX/bin
        ln -s $PREFIX/bin/$i.exe $PREFIX/bin/$i
    else
        cp $i $PREFIX/bin
    fi
done

if [ "$(uname)" == "Linux" ]; then
    # only necessary for gsl 2.7 / pplacers 1.1.alpha20
    ln -s $PREFIX/lib/libgsl.so $PREFIX/lib/libgsl.so.27 
fi

cp -r scripts $PREFIX/bin

chmod +x $PREFIX/bin/{guppy,pplacer,rppr}
