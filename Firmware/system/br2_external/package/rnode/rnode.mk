################################################################################
#
#  RNode SPI daemon
#
################################################################################

RNODE_VERSION = 6928c5d492ea91bacefe2bc5293826b2fbb0fbb2
RNODE_SITE = https://github.com/strijar/RNode-linux
RNODE_SITE_METHOD = git
RNODE_LICENSE = GPLv2

RNODE_DEPENDENCIES = libcyaml

$(eval $(cmake-package))
