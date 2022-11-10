rm -rf hardware/qcom-caf/sm8150/display
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/media
git clone https://github.com/ArrowOS/android_hardware_qcom_audio -b arrow-13.0-caf-sm8150 hardware/qcom-caf/sm8150/audio
git clone https://github.com/ArrowOS/android_hardware_qcom_media -b arrow-13.0-caf-sm8150 hardware/qcom-caf/sm8150/media
git clone https://github.com/ArrowOS/android_hardware_qcom_display -b arrow-13.0-caf-sm8150 hardware/qcom-caf/sm8150/display

# Create ld symlink to avoid linking error(s)
ln -s $(pwd)/prebuilts/clang/host/linux-x86/clang-r450784d/bin/lld \
    $(pwd)/prebuilts/clang/host/linux-x86/clang-r450784d/bin/ld &> /dev/null
