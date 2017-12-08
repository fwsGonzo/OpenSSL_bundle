#!/bin/bash
BUNDLE_FOLDER=openssl_bundle
mkdir -p $BUNDLE_FOLDER/include
mkdir -p $BUNDLE_FOLDER/openssl
cp /usr/lib/x86_64-linux-gnu/libssl.a $BUNDLE_FOLDER/
cp /usr/lib/x86_64-linux-gnu/libcrypto.a $BUNDLE_FOLDER/
cp -r /usr/include/openssl $BUNDLE_FOLDER/include
cp /usr/include/x86_64-linux-gnu/openssl/opensslconf.h $BUNDLE_FOLDER/openssl
tar -czvf openssl_bundle.tar.gz $BUNDLE_FOLDER/
