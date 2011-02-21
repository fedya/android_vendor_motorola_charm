#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := omap3
TARGET_CPU_ABI := armeabi

TARGET_NO_BOOTLOADER := true

TARGET_BOOTLOADER_BOARD_NAME := charm

BOARD_KERNEL_CMDLINE := console=ttyS2,115200n8 rw init=/init ip=off motobldlabel=none mtdparts=omap2-nand.0:128k(mbmloader),640k(mbm),640k(mbmbackup),384k(bploader),384k(cdt),1536k(pds),384k(lbl),384k(lbl_backup),384k(cid),1536k(sp),384k(devtree),640k(logo),384k(misc),3584k(boot),3840k(bpsw),4608k(recovery),9088k(cdrom),384k(unused0),182656k(system),384k(unused1),133760k(cache),175232k(userdata),384k(unused2),2m(kpanic),512k(rsv)


BOARD_KERNEL_BASE := 0x10000000

BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00380000)
BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00480000)
BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x0b260000)
BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x0ab20000)
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_RECOVERY_IGNORE_BOOTABLES := true

BOARD_DATA_DEVICE := /dev/block/mtdblock9
BOARD_DATA_FILESYSTEM := auto
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock7
BOARD_SYSTEM_FILESYSTEM := auto
BOARD_CACHE_DEVICE := /dev/block/mtdblock8
BOARD_CACHE_FILESYSTEM := auto

BOARD_HIJACK_RECOVERY_PATH := /preinstall/recovery
