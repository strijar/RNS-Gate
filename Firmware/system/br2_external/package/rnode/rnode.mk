################################################################################
#
#  RNode SPI daemon
#
################################################################################

RNODE_VERSION = 878840f141a624880bf2f04a1d9e9556c5ddbfb7
RNODE_SITE = https://github.com/strijar/RNode-linux
RNODE_SITE_METHOD = git
RNODE_LICENSE = GPLv2

RNODE_DEPENDENCIES = libcyaml

$(eval $(cmake-package))
