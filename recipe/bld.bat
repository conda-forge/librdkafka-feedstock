mkdir build
cd build
cmake ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -DCMAKE_INSTALL_LIBDIR=%LIBRARY_LIB% ^
  -DCMAKE_BUILD_TYPE:String=Release ^
  -DWITH_SSL=ON ^
  -DWITH_SNAPPY=ON ^
  -DWITH_ZLIB=ON ^
  -DWITH_CURL=ON ^
  -GNinja ^
  ..

if errorlevel 1 exit 1
ninja
ninja install
if errorlevel 1 exit 1
