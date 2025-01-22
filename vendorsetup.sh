#!/bin/bash

cd kernel/oplus/mt6893 && git submodule update --init && cd -
# Run Patches
bash device/oplus/camera/patches/apply.sh

# Make sure KernelSU is registered as a submodule
cd kernel/oplus/mt6893 && git submodule update --init && cd -