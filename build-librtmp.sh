#!/bin/sh
xcode-select --install

set -e

rm -rf work/rtmp/
mkdir -p work/rtmp/
cd work/rtmp/

git clone git@github.com:tdjac0bs/librtmp-iOS.git
cd librtmp-iOS
mkdir lib/
./build-librtmp.sh
./create-librtmp-framework.sh

echo "-----"
echo "RTMP framework created at `cd librtmp.framework/; pwd`"
echo "-----"

# tar cvzf ~/librtmp.tar.gz -C /Users/distiller/project/work/ssl/ OpenSSL-for-iPhone
