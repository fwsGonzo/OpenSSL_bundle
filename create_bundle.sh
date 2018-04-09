#!/bin/bash
BUNDLE_FOLDER=openssl_bundle
LOCAL_BUILD=local_build

mkdir -p $BUNDLE_FOLDER/include
mkdir -p $BUNDLE_FOLDER/lib
cp $LOCAL_BUILD/lib/*.a $BUNDLE_FOLDER/lib
cp -r $LOCAL_BUILD/include/openssl $BUNDLE_FOLDER/include
tar -czvf openssl_bundle.tar.gz $BUNDLE_FOLDER/
echo Removing temp folder $BUNDLE_FOLDER
rm -rf $BUNDLE_FOLDER
