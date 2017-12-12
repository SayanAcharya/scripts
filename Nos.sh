git clone https://github.com/RiteshSaxena/device_xiaomi_land -b lineage-15.0 device/xiaomi/land
git clone https://github.com/RiteshSaxena/android_kernel_xiaomi_msm8937 -b oreo kernel/xiaomi/msm8937
git clone https://github.com/RiteshSaxena/proprietary_vendor_xiaomi -b lineage-15.0-land vendor/xiaomi
rm -rf frameworks/opt/telephony
git clone https://github.com/RiteshSaxena/android_frameworks_opt_telephony -b lineage-15.0 frameworks/opt/telephony
rm -rf hardware/libhardware
rm -rf hardware/libhardware_legacy
rm -rf system/libhidl
ne https://github.com/GZOSP/hardware_qcom_wlan -b 8.0-caf hardware/qcom/wlan
cd packages/services/Telephony && git fetch https://github.com/GZOSP/packages_services_Telephony && git cherry-pick 289b5ad26f9a9f14d6b4e7f169c5cbdb9637ad6c
cd ..
cd ..
cd 
cd har*/qc*
grep -rl '$(call project-path-for,qcom-media)' ./ | xargs sed -i 's/$(call project-path-for,qcom-media)/hardware\/qcom\/media/g'
grep -rl '$(call project-path-for,qcom-audio)' ./ | xargs sed -i 's/$(call project-path-for,qcom-audio)/hardware\/qcom\/audio/g'
grep -rl '$(call project-path-for,qcom-display)' ./ | xargs sed -i 's/$(call project-path-for,qcom-display)/hardware\/qcom\/display/g'
cd build/core && git fetch https://github.com/GZOSP/build && git cherry-pick bd350ad931cb49c8ffd4a799b044ec9c7b394a2b
cd ..
cd ..
cd bionic
git cherry-pick https://github.com/GZOSP/bionic && git cherry-pick 7aaa563f1026600fbf737deaaf91b3a7a8071bed
git cherry-pick https://github.com/RiteshSaxena/android_bionic && git cherry-pick 6b8ef91988559a64a4521b471002222f2b4f9eff
cd ..
cd build/soong
git fetch https://github.com/DirtyUnicorns/android_build_soong && git cherry-pick 4aefec5e4a63de13f99882820aedfd926467c91b
