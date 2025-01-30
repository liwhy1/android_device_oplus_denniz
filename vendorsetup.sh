#!/bin/bash

# Make sure KernelSU is registered as a submodule
cd kernel/oplus/mt6893 && git submodule update --init && cd -

# Dirty Patch
# Update UdfpsDimZOrder
sed -i "s/"0x41000005"/"0x41000033"/g" "hardware/oplus/hidl/fingerprint/UdfpsExtension.cpp"