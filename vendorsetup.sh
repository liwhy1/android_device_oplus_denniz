#!/bin/bash

# Make sure KernelSU is registered as a submodule
cd kernel/oplus/mt6893 && git submodule update --init && cd -

# Clone clang r487747c
git clone https://gitlab.com/crdroidandroid/android_prebuilts_clang_host_linux-x86_clang-r487747c prebuilts/clang/host/linux-x86/clang-r487747c --depth 1