cmake -S ./modules/libgit2 -B ./dependencies/libgit2 -DCMAKE_INSTALL_PREFIX="./install" -DBUILD_SHARED_LIBS=ON
cmake --build ./dependencies/libgit2 --config release --target install