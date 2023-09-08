set RootDir=%~1

IF [%RootDir%] == [] GOTO :MyLabel

set openssl_install_dir=%RootDir%\install
set openssl_ssl_dir=%RootDir%\install\SSL

cd ./modules/openssl

perl ./Configure --shared VC-WIN64A --prefix="%openssl_install_dir%" --openssldir="%openssl_ssl_dir%" --release
nmake
nmake install

cd ../../

:MyLabel