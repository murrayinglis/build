# Rockchip RV1106G3 single core 256MB SoC 1x100MBe EMMC USB2 WiFi6 BT5.2
BOARD_NAME="Luckfox Pico Ultra / Ultra W"
BOARD_VENDOR="luckfox"
BOARDFAMILY="rockchip-rv1106"
BOOTCONFIG="luckfox_rv1106_uboot_defconfig"
BOARD_MAINTAINER=""
INTRODUCED="2024"
KERNEL_TARGET="vendor"
KERNEL_TEST_TARGET="vendor"
BOOT_FDT_FILE="rv1106g-luckfox-pico-ultra.dtb"
IMAGE_PARTITION_TABLE="gpt"
BOOT_SOC="rv1106"

# Board has 256MB RAM; use 'lowmem' extension to optimize for this.
enable_extension "lowmem"

# Ultra W: AIC8800DC on SDIO. The in-tree aic8800_sdio driver doesn't build (armbian/linux-rockchip#455).
enable_extension "radxa-aic8800"
AIC8800_TYPE="sdio"
PACKAGE_LIST_BOARD="rfkill bluetooth bluez bluez-tools"
