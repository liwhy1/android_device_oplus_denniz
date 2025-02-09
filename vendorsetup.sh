#!/bin/bash

# Make sure KernelSU is registered as a submodule
cd kernel/oplus/mt6893 && rm -rf KernelSU-Next && git clone https://github.com/Kingslayer9988/KernelSU-Next -b next KernelSU-Next cd -