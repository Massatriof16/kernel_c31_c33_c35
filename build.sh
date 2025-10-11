currentdir=$(pwd)

mkdir clang
cd clang
wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/tags/android-12.0.0_r12/clang-r416183b.tar.gz
tar xfv clang-r416183b.tar.gz
cd "$currentdir"
make ARCH=arm64 O="out" CC="clang" CLANG_TRIPLE="aarch64-linux-gnu-" CROSS_COMPILE="aarch64-linux-android-" CROSS_COMPILE_ARM32="arm-linux-androideabi-" LD="ld.lld" AR="llvm-ar" NM="llvm-nm" OBJCOPY="llvm-objcopy" OBJDUMP="llvm-objdump" READELF="llvm-readelf" OBJSIZE="llvm-size" STRIP="llvm-strip" LDGOLD="aarch64-linux-gnu-ld.gold" LLVM_AR="llvm-ar" LLVM_DIS="llvm-dis" BSP_BUILD_ANDROID_OS="y" BSP_BUILD_FAMILY="qogirl6" RMX3511_defconfig
make ARCH=arm64 O="out" CC="clang" CLANG_TRIPLE="aarch64-linux-gnu-" CROSS_COMPILE="aarch64-linux-android-" CROSS_COMPILE_ARM32="arm-linux-androideabi-" LD="ld.lld" AR="llvm-ar" NM="llvm-nm" OBJCOPY="llvm-objcopy" OBJDUMP="llvm-objdump" READELF="llvm-readelf" OBJSIZE="llvm-size" STRIP="llvm-strip" LDGOLD="aarch64-linux-gnu-ld.gold" LLVM_AR="llvm-ar" LLVM_DIS="llvm-dis" BSP_BUILD_ANDROID_OS="y" BSP_BUILD_FAMILY="qogirl6"
