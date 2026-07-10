################################################################################
#
#  Dire Wolf
#
################################################################################

DIREWOLF_VERSION = eda1383f5fa9d8ba3cb27f99db1d2c79494404c9
DIREWOLF_SITE = https://github.com/wb2osz/direwolf
DIREWOLF_SITE_METHOD = git
DIREWOLF_LICENSE = GPLv2

DIREWOLF_DEPENDENCIES = alsa-lib libgpiod

define DIREWOLF_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/src/direwolf $(TARGET_DIR)/usr/bin/direwolf
    $(INSTALL) -D -m 0755 $(@D)/src/kissutil $(TARGET_DIR)/usr/bin/kissutil
endef

$(eval $(cmake-package))
