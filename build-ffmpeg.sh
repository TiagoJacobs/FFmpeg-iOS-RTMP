#!/bin/sh
xcode-select --install

set -e

rm -rf work/ffmpeg/
mkdir -p work/ffmpeg/
cd work/ffmpeg/

git clone git@github.com:tdjac0bs/FFmpeg-iOS-build-script.git
cd FFmpeg-iOS-build-script
./build-ffmpeg.sh

echo "-----"
echo "FFMPEG framework created at `cd FFmpeg.framework/; pwd`"
echo "-----"
