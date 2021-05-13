#!/bin/sh
# build icns from png
image=${1?'missing: input filename'}
image=${image%.png}
INPUT="$image.png"
OUT=${2:-$image}.iconset
mkdir -p $OUT
comp() {
    sips -z $1 $1 $INPUT --out $OUT/icon_$2x$2$3.png
}
comp 256 256
comp 256 128 '@2x'
comp 128 128
comp 64 32 '@2x'
comp 32 32
comp 32 16 '@2x'
comp 16 16
iconutil --convert icns $OUT
echo "Done."
