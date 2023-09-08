@echo off

call ./directory_build
call ./installers/zlib
call ./installers/openssl %cd%
call ./installers/libssh2 
call ./installers/libgit2