ifeq ($(TARGET_KERNEL_INLINE),true)
include vendor/bianca/config/BoardConfigKernel.mk
endif

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/bianca/config/BoardConfigQcom.mk
endif

include vendor/bianca/config/BoardConfigSoong.mk
