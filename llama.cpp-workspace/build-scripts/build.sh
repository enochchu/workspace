#/bin/bash

SRC_DIRECTORY='./src'
INSTALL_DIRECTORY='./bin'


if [ ! -d "$SRC_DIRECTORY" ]; then
  git clone https://github.com/ggml-org/llama.cpp $SRC_DIRECTORY
  cd $SRC_DIRECTORY
  git submodule update --init --recursive
fi

cd $SRC_DIRECTORY
git submodule update --init --recursive

cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$INSTALL_DIRECTORY -DLLAMA_BUILD_TESTS=OFF -DLLAMA_BUILD_EXAMPLES=ON -DLLAMA_BUILD_SERVER=ON
