SOONG_CONFIG_NAMESPACES += kernel_type
SOONG_CONFIG_kernel_type += name
SOONG_CONFIG_kernel_type_name ?= kernel_prebuilt

ifeq ($(TARGET_KERNEL_INLINE),true)
include vendor/bianca/config/BoardConfigKernel.mk
SOONG_CONFIG_kernel_type_name := kernel_inline
endif

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include hardware/qcom-caf/common/BoardConfigQcom.mk
endif

include vendor/bianca/config/BoardConfigSoong.mk
