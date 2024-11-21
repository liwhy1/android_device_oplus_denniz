#!/bin/bash

# Clone firmware
git clone https://gitlab.com/nattolecats/android_vendor_oneplus_denniz-firmware vendor/oplus/denniz-firmware --depth 1

# Make sure KernelSU is registered as a submodule
cd kernel/oplus/mt6893 && git submodule update --init

# Apply patches
bash device/oplus/denniz/patches/apply.sh