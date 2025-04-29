# SPDX-License-Identifier: GPL-2.0-only

ifeq ($(SUBTARGET),msm8916)

define Device/msm8916
	SOC := msm8916
	CMDLINE := "earlycon console=tty0 console=ttyMSM0,115200 root=/dev/mmcblk0p14 rw rootwait"
endef

define Device/openstick-ufi001c
  $(Device/msm8916)
  DEVICE_VENDOR := Zhihe
  DEVICE_MODEL := OpenStick UFI001C
  DEVICE_DTS := msm8916-thwc-ufi001c
  DEVICE_DTS_DIR := ../dts
  DEVICE_PACKAGES := openstick_tweaks wpad-basic-wolfssl qcom-msm8916-openstick-ufi001c-modem qcom-msm8916-openstick-ufi001c-wcnss qcom-msm8916-openstick-ufi001c-nv
endef
TARGET_DEVICES += openstick-ufi001c

define Device/openstick-ufi001b
  $(Device/msm8916)
  DEVICE_VENDOR := Zhihe
  DEVICE_MODEL := OpenStick UFI001B
  DEVICE_DTS := msm8916-thwc-ufi001b
  DEVICE_DTS_DIR := ../dts
  DEVICE_PACKAGES := openstick_tweaks wpad-basic-wolfssl qcom-msm8916-openstick-ufi001b-modem qcom-msm8916-openstick-ufi001b-wcnss qcom-msm8916-openstick-ufi001b-nv
endef
TARGET_DEVICES += openstick-ufi001b

define Device/openstick-ufi103s
  $(Device/openstick-ufi001c)
  DEVICE_MODEL := OpenStick UFI103S
  DEVICE_DTS_DIR := ../dts
  DEVICE_PACKAGES := openstick-tweaks wpad-basic-wolfssl qcom-msm8916-openstick-ufi103s-modem qcom-msm8916-openstick-ufi103s-wcnss qcom-msm8916-openstick-ufi103s-nv
endef
TARGET_DEVICES += openstick-ufi103s

define Device/openstick-qrzl903
  $(Device/openstick-ufi001c)
  DEVICE_MODEL := OpenStick QRZL903
  DEVICE_DTS_DIR := ../dts
  DEVICE_PACKAGES := openstick-tweaks wpad-basic-wolfssl qcom-msm8916-openstick-qrzl903-modem qcom-msm8916-openstick-qrzl903-wcnss qcom-msm8916-openstick-qrzl903-nv
endef
TARGET_DEVICES += openstick-qrzl903

define Device/openstick-w001
  $(Device/openstick-ufi001c)
  DEVICE_MODEL := OpenStick W001
  DEVICE_DTS_DIR := ../dts
  DEVICE_PACKAGES := openstick-tweaks wpad-basic-wolfssl qcom-msm8916-openstick-w001-modem qcom-msm8916-openstick-w001-wcnss qcom-msm8916-openstick-w001-nv
endef
TARGET_DEVICES += openstick-w001

define Device/openstick-ufi003
  $(Device/openstick-ufi001c)
  DEVICE_MODEL := OpenStick UFI003
  DEVICE_DTS_DIR := ../dts
  DEVICE_PACKAGES := openstick-tweaks wpad-basic-wolfssl qcom-msm8916-openstick-ufi003-modem qcom-msm8916-openstick-ufi003-wcnss qcom-msm8916-openstick-ufi003-nv
endef
TARGET_DEVICES += openstick-ufi003

define Device/openstick-uz801
  $(Device/msm8916)
  DEVICE_VENDOR := YiMing
  DEVICE_MODEL := OpenStick UZ801
  DEVICE_DTS := msm8916-yiming-uz801v3
  DEVICE_DTS_DIR := ../dts
  DEVICE_PACKAGES := openstick-tweaks wpad-basic-wolfssl qcom-msm8916-openstick-uz801-modem qcom-msm8916-openstick-uz801-wcnss qcom-msm8916-openstick-uz801-nv
endef
TARGET_DEVICES += openstick-uz801

define Device/openstick-mf32
  $(Device/msm8916)
  DEVICE_VENDOR := XinXun
  DEVICE_MODEL := OpenStick MF32
  DEVICE_DTS := msm8916-ufi-mf32
    DEVICE_DTS_DIR := ../dts
  DEVICE_PACKAGES := openstick-tweaks wpad-basic-wolfssl qcom-msm8916-openstick-mf32-modem qcom-msm8916-openstick-mf32-wcnss qcom-msm8916-openstick-mf32-nv
endef
TARGET_DEVICES += openstick-mf32

define Device/openstick-mf601
  $(Device/msm8916)
  DEVICE_VENDOR := BenTeng
  DEVICE_MODEL := OpenStick MF601
  DEVICE_DTS := msm8916-ufi-mf601
  DEVICE_DTS_DIR := ../dts
  DEVICE_PACKAGES := openstick-tweaks wpad-basic-wolfssl qcom-msm8916-openstick-mf601-modem qcom-msm8916-openstick-mf601-wcnss qcom-msm8916-openstick-mf601-nv
endef
TARGET_DEVICES += openstick-mf601

define Device/openstick-mfx32
  $(Device/msm8916)
  DEVICE_VENDOR := XinXun
  DEVICE_MODEL := OpenStick MFX32
  DEVICE_DTS := msm8916-ufi-mfx32
    DEVICE_DTS_DIR := ../dts
  DEVICE_PACKAGES := openstick-tweaks wpad-basic-wolfssl qcom-msm8916-openstick-mfx32-modem qcom-msm8916-openstick-mfx32-wcnss qcom-msm8916-openstick-mfx32-nv
endef
TARGET_DEVICES += openstick-mfx32

define Device/openstick-wf2
  $(Device/msm8916)
  DEVICE_VENDOR := XinXun
  DEVICE_MODEL := OpenStick WF2
  DEVICE_DTS := msm8916-ufi-wf2
  DEVICE_DTS_DIR := ../dts
  DEVICE_PACKAGES := openstick-tweaks wpad-basic-wolfssl qcom-msm8916-openstick-wf2-modem qcom-msm8916-openstick-wf2-wcnss qcom-msm8916-openstick-wf2-nv kmod-gpio-button-hotplug kmod-button-hotplug kmod-input-gpio-keys kmod-input-gpio-keys-polled
endef
TARGET_DEVICES += openstick-wf2
endif
