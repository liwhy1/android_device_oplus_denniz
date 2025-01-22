#!/bin/bash

# Run Patches
cd device/oplus/camera/patches && apply.sh && cd -

# Make sure KernelSU is registered as a submodule
cd kernel/oplus/mt6893 && git submodule update --init && cd -
