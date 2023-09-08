cmake -S ./modules/libssh2 -B ./dependencies/libssh2 -DCMAKE_INSTALL_PREFIX="./install" -DBUILD_SHARED_LIBS=ON
cmake --build ./dependencies/libssh2 --config release --target install