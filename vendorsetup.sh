#!/bin/bash

git clone https://gitlab.com/nattolecats/android_vendor_oneplus_denniz-firmware vendor/oplus/denniz-firmware --depth 1

bash device/oplus/mt6893-common/patches/apply.sh