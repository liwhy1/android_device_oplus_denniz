#!/bin/bash

# Make sure KernelSU is registered as a submodule
cd kernel/oplus/mt6893 && git submodule update --init && cd -

# Modify hw/oplus fingerprint zorder manually
sed -i 's/return 0x41000005;/return 0x41000033;/' hardware/oplus/fingerprint/UdfpsExtension.cpp