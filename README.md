# Cross build opencv for C++ in Ubuntu 18.04 bionic

## Modify /etc/apt/source.list

```bash
deb [arch=amd64,i386] http://archive.ubuntu.com/ubuntu/ bionic main restricted universe multiverse
deb [arch=amd64,i386] http://archive.ubuntu.com/ubuntu/ bionic-updates main restricted universe multiverse
deb [arch=amd64,i386] http://archive.ubuntu.com/ubuntu/ bionic-backports main restricted universe multiverse
deb [arch=amd64,i386] http://security.ubuntu.com/ubuntu/ bionic-security main restricted universe multiverse

deb [arch=armhf,arm64] http://ports.ubuntu.com/ubuntu-ports bionic main restricted universe multiverse
deb [arch=armhf,arm64] http://ports.ubuntu.com/ubuntu-ports bionic-updates main restricted universe multiverse
deb [arch=armhf,arm64] http://ports.ubuntu.com/ubuntu-ports bionic-backports main restricted universe multiverse
deb [arch=armhf,arm64] http://ports.ubuntu.com/ubuntu-ports bionic-security main restricted universe multiverse
```

## Update
``` bash
sudo apt-get update
sudo apt-get install git cmake
```

## Clone & build

``` bash
git clone https://github.com/abeobk/opencv_crossbuild.git
cd opencv_crossbuild
sudo ./dep_install
```

For armhf run:
```bash
build_opencv armhf
```

For arm64 run:
```bash
build_opencv arm64
```
