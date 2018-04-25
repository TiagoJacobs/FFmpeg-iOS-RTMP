#!/bin/sh
set -e

rm -rf work/ssl/
mkdir -p work/ssl/
cd work/ssl/

git clone https://github.com/tdjac0bs/OpenSSL-for-iPhone.git
cd OpenSSL-for-iPhone/
 ./build-libssl.sh --version=1.0.2o
./create-openssl-framework.sh

echo "-----"
echo "SSL framework created at `cd openssl.framework/; pwd`"
echo "-----"

tar cvzf /libssl.tar.gz `cd openssl.framework/; pwd`

cd -
