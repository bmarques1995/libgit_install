@echo off

mkdir install

cd ./install

mkdir SSL

cd ../

set openssl_install_dir=%cd%\install
set openssl_ssl_dir=%cd%\install\SSL

cmake -S ./modules/zlib -B ./dependencies/zlib -DCMAKE_INSTALL_PREFIX="./install"
cmake --build ./dependencies/zlib --config release --target install

cd ./modules/openssl

perl ./Configure --shared VC-WIN64A --prefix="%openssl_install_dir%" --openssldir="%openssl_ssl_dir%" --release
nmake
nmake install

cd ../../

cmake -S ./modules/libgit2 -B ./dependencies/libgit2 -DCMAKE_INSTALL_PREFIX="./install" -DBUILD_SHARED_LIBS=ON
cmake --build ./dependencies/libgit2 --config release --target install