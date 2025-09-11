#!/bin/bash

brew install ccache
brew install cmake ninja

brew install llvm
brew install libomp

echo ''
echo 'Remember to set this for OpenMP to work'
echo ''
echo 'export OpenMP_ROOT=$(brew --prefix)/opt/libomp'
echo 'export LDFLAGS="$LDFLAGS -L${OpenMP_ROOT}/lib"'
echo ''
