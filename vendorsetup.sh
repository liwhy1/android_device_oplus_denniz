#!/bin/bash

# Make sure KernelSU is registered as a submodule
rm -rf kernel/oplus/mt6893/KernelSU-Next && git clone https://github.com/soulspark666/KernelSU-Next -b next kernel/oplus/mt6893/KernelSU-Next
