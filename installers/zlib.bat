cmake -S ./modules/zlib -B ./dependencies/zlib -DCMAKE_INSTALL_PREFIX="./install"
cmake --build ./dependencies/zlib --config release --target install