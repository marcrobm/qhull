set -e
rm -rf build_android
mkdir build_android
cd build_android
mkdir out
mkdir armeabi-v7a
mkdir arm64-v8a
mkdir x86
mkdir x86_64

cd armeabi-v7a
cmake -B ../armeabi-v7a -S ../../ -DCMAKE_TOOLCHAIN_FILE="${ANDROID_NDK}/build/cmake/android.toolchain.cmake" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="../out/armeabi-v7a" -DANDROID_PLATFORM=android-22 -DANDROID_ABI=armeabi-v7a
cd ../armeabi-v7a
make -j20
make install
cd ../

cd arm64-v8a
cmake -B ../arm64-v8a -S ../../ -DCMAKE_TOOLCHAIN_FILE="${ANDROID_NDK}/build/cmake/android.toolchain.cmake" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="../out/arm64-v8a" -DANDROID_PLATFORM=android-22 -DANDROID_ABI=arm64-v8a
cd ../arm64-v8a
make -j20
make install
cd ../

cd x86
cmake -B ../x86 -S ../../ -DCMAKE_TOOLCHAIN_FILE="${ANDROID_NDK}/build/cmake/android.toolchain.cmake" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="../out/x86" -DANDROID_PLATFORM=android-22 -DANDROID_ABI=x86
cd ../x86
make -j20
make install
cd ../

cd x86_64
cmake -B ../x86_64 -S ../../ -DCMAKE_TOOLCHAIN_FILE="${ANDROID_NDK}/build/cmake/android.toolchain.cmake" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="../out/x86_64" -DANDROID_PLATFORM=android-22 -DANDROID_ABI=x86_64
cd ../x86_64
make -j20
make install
cd ../../

