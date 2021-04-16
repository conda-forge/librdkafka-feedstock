mkdir build
cd build
cmake ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -DCMAKE_INSTALL_LIBDIR=%LIBRARY_LIB% ^
  -DCMAKE_BUILD_TYPE:String=Release ^
  -GNinja ^
  ..

if errorlevel 1 exit 1
ninja
ninja install
if errorlevel 1 exit 1