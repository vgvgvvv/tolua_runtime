
#build tolua
mkdir -p build_mac && cd build_mac

cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/MAC.cmake -GXcode ../..
#make -j4
cd .. 
cmake --build build_mac --config Release

rm -rf Plugins/rogamelibs.bundle
cp -R build_mac/Release/rogamelibs.bundle Plugins/rogamelibs.bundle
rm -rf build_mac