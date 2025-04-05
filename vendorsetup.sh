#!/bin/bash

# Clone common tree if not exists
if [ ! -d "device/xiaomi/sdm845-common" ]; then
    git clone https://github.com/Rv-Project/android_device_xiaomi_sdm845-common device/xiaomi/sdm845-common
else
    echo "device/xiaomi/sdm845-common already exists, skipping clone"
fi

# Clone proprietary if not exists
if [ ! -d "vendor/xiaomi/beryllium" ]; then
    git clone --depth=1 https://github.com/Rv-Project/proprietary_vendor_xiaomi_beryllium vendor/xiaomi/beryllium
else
    echo "vendor/xiaomi/beryllium already exists, skipping clone"
fi

if [ ! -d "vendor/xiaomi/sdm845-common" ]; then
    git clone --depth=1 https://github.com/Rv-Project/proprietary_vendor_xiaomi_sdm845-common vendor/xiaomi/sdm845-common
else
    echo "vendor/xiaomi/sdm845-common already exists, skipping clone"
fi

# Clone kernel source if not exists
if [ ! -d "kernel/xiaomi/sdm845" ]; then
    git clone --depth=1 https://github.com/AOSPA-Beryllium-SDM845/android_kernel_xiaomi_sdm845 kernel/xiaomi/sdm845

    # Rename Android.bp to Androidbp
    if [ -f "kernel/xiaomi/sdm845/Android.bp" ]; then
        mv kernel/xiaomi/sdm845/Android.bp kernel/xiaomi/sdm845/Androidbp
    fi
else
    echo "kernel/xiaomi/sdm845 already exists, skipping clone"
fi

# Clone xiaomi hardware if not exists
if [ ! -d "hardware/xiaomi" ]; then
    git clone --depth=1 https://github.com/Rve27/android_hardware_xiaomi hardware/xiaomi
else
    echo "hardware/xiaomi already exists, skipping clone"
fi
