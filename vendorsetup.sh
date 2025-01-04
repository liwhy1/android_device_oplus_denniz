#!/bin/bash

# Make sure KernelSU is registered as a submodule
cd kernel/oplus/mt6893 && git submodule update --init && cd -

# Apply patches
bash device/oplus/denniz/patches/apply.sh