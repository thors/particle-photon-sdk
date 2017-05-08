#!/bin/bash
export PATH=/opt/gcc-arm/bin/:$PATH
export GCC_ARM_PATH=/opt/gcc-arm/bin/
cd /src/modules

arm-none-eabi-gcc --version
make clean all PLATFORM=photon


