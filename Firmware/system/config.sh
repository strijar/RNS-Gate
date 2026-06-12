#!/usr/bin/bash

BR_RELEASE="buildroot-2026.02.1"

if [ ! -e ${BR_RELEASE}.tar.gz ]; then
  wget https://buildroot.org/downloads/${BR_RELEASE}.tar.gz
  tar xf ${BR_RELEASE}.tar.gz
fi

make -C ${BR_RELEASE} BR2_EXTERNAL=../br2_external O=../output_gate gate_zero_defconfig
