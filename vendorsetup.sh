#!/bin/bash

# Make sure KernelSU is registered as a submodule
cd kernel/oplus/mt6893 && git submodule update --init && cd -

rm -rf frameworks/base/core/java/com/oplus/util/OplusTypeCastingHelper.java
rm -rf frameworks/base_new/core/java/com/oplus/util/OplusTypeCastingHelper.java
rm -rf frameworks/base/new/core/java/com/oplus/util/OplusTypeCastingHelper.java