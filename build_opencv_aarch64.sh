#!/bin/bash

if [[ ! -d "opencv" ]]; then
	git clone https://github.com/opencv/opencv.git
else
	rm -rf  opencv/build_arm64
fi

cd opencv


mkdir build_arm64 install_arm64
cd build_arm64

cmake .. \
-DCMAKE_BUILD_TYPE=RELEASE \
-DCMAKE_INSTALL_PREFIX=../install_arm64 \
-DCMAKE_TOOLCHAIN_FILE=../platforms/linux/aarch64-gnu.toolchain.cmake \
-DINSTALL_C_EXAMPLES=OFF \
-DINSTALL_PYTHON_EXAMPLES=OFF \
-DWITH_PTHREADS_PF=ON \
-DWITH_V4L=ON \
-DWITH_QT=OFF \
-DWITH_OPENGL=OFF \
-DWITH_TIFF=OFF \
-DWITH_WEBP=OFF \
-DWITH_OPENEXR=OFF \
-DWITH_JASPER=OFF \
-DWITH_GSTREAMER=OFF \
-DWITH_MSMF=OFF \
-DWITH_DSHOW=OFF \
-DWITH_AVFOUNDATION=OFF \
-DWITH_1394=OFF \
-DWITH_ANDROID_MEDIANDK=OFF \
-DWITH_GTK=OFF \
-DWITH_WIN32UI=OFF \
-DWITH_PROTOBUF=OFF \
-DBUILD_PROTOBUF=OFF \
-DWITH_DNN_OPENCL=ON \
-DCPU_BASELINE="NEON VFPV3" \
-DENABLE_NEON=ON \
-DENABLE_VFPV3=ON \
-DBUILD_EXAMPLES=OFF \
-DBUILD_TESTS=OFF \
-DBUILD_PYTHON=OFF \
-DBUILD_opencv_apps=OFF \
-DBUILD_LIST=core,videoio,imgproc,imgcodecs,calib3d,ml,video \
-DBUILD_JAVA=OFF \
-DBUILD_FAT_JAVA_LIB=OFF \
-DBUILD_opencv_python2=OFF \
-DBUILD_opencv_python3=OFF

make -j16
make install
