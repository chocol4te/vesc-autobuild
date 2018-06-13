#!/bin/bash
set -e

rm -r build/vedderb-bldc
mkdir build/vedderb-bldc

#vedderb
cd ./vedderb-bldc

#HW 46
touch conf_general.h
make -j8 build_args="-DHW_VERSION_46"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-46-default.bin

touch conf_general.h
make -j8 build_args="-DHW_VERSION_46 -DVIN_R1=33000.0"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-46-33k.bin

touch conf_general.h
make -j8 build_args="-DHW_VERSION_46 -DCURRENT_SHUNT_RES=0.0005"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-46-0005ohm.bin

touch conf_general.h
make -j8 build_args="-DHW_VERSION_46 -DWS2811_ENABLE=1"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-46-ws2811.bin

touch conf_general.h
make -j8 build_args="-DHW_VERSION_46 -DWS2811_ENABLE=1 -DVIN_R1=33000.0"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-46-ws2811-33k.bin

touch conf_general.h
make -j8 build_args="-DHW_VERSION_46 -DSERVO_OUT_ENABLE=1"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-46-servoout.bin

#HW 48
touch conf_general.h
make -j8 build_args="-DHW_VERSION_48"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-48-default.bin

touch conf_general.h
make -j8 build_args="-DHW_VERSION_48 -DCURRENT_SHUNT_RES=0.0005"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-48-0005ohm.bin

touch conf_general.h
make -j8 build_args="-DHW_VERSION_48 -DWS2811_ENABLE=1"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-48-ws2811.bin

# Build fails, disabled until fixed
#touch conf_general.h
#make -j8 build_args="-DHW_VERSION_48 -DSERVO_OUT_ENABLE=1"
#cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-48-servoout.bin

#HW 410
touch conf_general.h
make -j8 build_args="-DHW_VERSION_410"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-410-default.bin

touch conf_general.h
make -j8 build_args="-DHW_VERSION_410 -DDISABLE_HW_LIMITS"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-410-no-hw-limits.bin

touch conf_general.h
make -j8 build_args="-DHW_VERSION_410 -DCURRENT_SHUNT_RES=0.0005"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-410-0005ohm.bin

touch conf_general.h
make -j8 build_args="-DHW_VERSION_410 -DWS2811_ENABLE=1"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-410-ws2811.bin

touch conf_general.h
make -j8 build_args="-DHW_VERSION_410 -DSERVO_OUT_ENABLE=1"
cp ./build/BLDC_4_ChibiOS.bin ../build/vedderb-bldc/vedderb-410-servoout.bin

#HW 60
