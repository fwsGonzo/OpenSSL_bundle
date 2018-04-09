#!/bin/bash
set -e
mkdir -p local_build
DST=`pwd`/local_build

pushd openssl
./config no-ssl3 no-threads --prefix=$DST --openssldir=$DST
make -j8 depend
make -j8
make install
popd
