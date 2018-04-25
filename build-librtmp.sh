#!/bin/sh
xcode-select --install

set -e

rm -rf work/rtmp/
mkdir -p work/rtmp/
cd work/rtmp/

git clone git@github.com:tdjac0bs/librtmp-iOS.git
cd librtmp-iOS
./build-librtmp.sh
