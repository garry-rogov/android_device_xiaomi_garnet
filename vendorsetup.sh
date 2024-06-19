echo 'Starting to clone stuffs needed to build for garnet'

# Vendor
echo 'Cloning vendor tree'
rm -rf vendor/xiaomi/garnet && git clone https://github.com/JYRRC/vendor_xiaomi_garnet.git -b 14.0 vendor/xiaomi/garnet

# Kernel
echo 'Cloning kernel tree'
git clone https://github.com/JYRRC/device_xiaomi_garnet-kernel.git -b ksu device/xiaomi/garnet-kernel

# Hardware Xiaomi
echo 'Cloning hardware oplus'
rm -rf hardware/xiaomi && git clone https://github.com/JYRRC/hardware_xiaomi.git -b 14.0 hardware/xiaomi

# MiuiCamera
echo 'Cloning common tree'
git clone https://codeberg.org/JYRRC/vendor_xiaomi_garnet-miuicamera.git -b 14-leica vendor/xiaomi/garnet-miuicamera

# PixelParts
#echo 'Cloning vendor tree'
#git clone https://github.com/JYRRC/packages_apps_PixelParts.git packages/apps/PixelParts

# ViperFx
echo 'Cloning Viper'
git clone https://github.com/JYRRC/packages_apps_ViPER4AndroidFX.git -b hzn packages/apps/ViPER4AndroidFX

# BCR
#echo 'Cloning bcr'
#git clone https://github.com/JYRRC/vendor_bcr.git -b main vendor/bcr

echo 'Cloning process is completed, now its time for lunch'
