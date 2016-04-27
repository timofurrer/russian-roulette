#!/bin/bash

set -x

SOURCE=https://github.com/timofurrer/russian-roulette.git
TARGET=/tmp/russian-roulette-$RANDOM
git clone --depth 1 $SOURCE $TARGET
cd $TARGET
make install
rm -rf $TARGET
