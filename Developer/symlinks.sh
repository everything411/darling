SDK="`pwd`/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
FRAMEWORKS="$SDK/System/Library/Frameworks"
LIBS="$SDK/usr/lib"
TOOLS="`pwd`/Toolchains/XcodeDefault.xctoolchain/usr/bin"

ln -sf "$BUILD/src/external/foundation/Foundation" "$FRAMEWORKS/Foundation.framework/Versions/C"
ln -sf "$BUILD/src/external/corefoundation/CoreFoundation" "$FRAMEWORKS/CoreFoundation.framework/Versions/A"

ln -sf "$BUILD/src/external/objc4/runtime/libobjc.A.dylib" "$LIBS"
ln -sf "$BUILD/src/libsystem/libSystem.B.dylib" "$LIBS"

echo $BUILD

mkdir -p "$LIBS/system"
ln -sf "$BUILD/src/sandbox/libsystem_sandbox.dylib" "$LIBS/system"
ln -sf "$BUILD/src/quarantine/libquarantine.dylib" "$LIBS/system"
ln -sf "$BUILD/src/libremovefile/libremovefile.dylib" "$LIBS/system"
ln -sf "$BUILD/src/copyfile/libcopyfile.dylib" "$LIBS/system"
ln -sf "$BUILD/src/libsystem_coreservices/libsystem_coreservices.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/coretls/libsystem_coretls.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/libmalloc/libsystem_malloc.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/libc/libsystem_c.dylib" "$LIBS/system"
ln -sf "$BUILD/src/kernel/libsystem_kernel.dylib" "$LIBS/system"
ln -sf "$BUILD/src/keymgr/libkeymgr.dylib" "$LIBS/system"
ln -sf "$BUILD/src/libm/libsystem_m.dylib" "$LIBS/system"
ln -sf "$BUILD/src/libinfo/libsystem_info.dylib" "$LIBS/system"
ln -sf "$BUILD/src/libnotify/libsystem_notify.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/libdispatch/libdispatch.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/compiler-rt/lib/builtins/libcompiler_rt.dylib" "$LIBS/system"
ln -sf "$BUILD/src/libunwind/libunwind.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/dyld/libdyld.dylib" "$LIBS/system"
ln -sf "$BUILD/src/libmacho/libmacho.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/libpthread/src/libsystem_pthread.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/libplatform/libsystem_platform.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/syslog/libsystem_asl.tproj/libsystem_asl.dylib" "$LIBS/system"
ln -sf "$BUILD/src/duct/src/libsystem_duct.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/libclosure/libsystem_blocks.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/libxpc/libxpc.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/corecrypto/libcorecrypto.dylib" "$LIBS/system"
ln -sf "$BUILD/src/external/commoncrypto/libcommonCrypto.dylib" "$LIBS/system"
ln -sf "$BUILD/src/launchd/liblaunch/liblaunch.dylib" "$LIBS/system"

ln -sf "$BUILD/src/bsdln/bsdln" "$TOOLS/bsdln"
ln -sf "$BUILD/src/bsdln/bsdln" "$TOOLS/ln"
