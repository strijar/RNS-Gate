################################################################################
#
#  RNode SPI daemon
#
################################################################################

RNODE_VERSION = 4802f5196e401655ecff55163f32c1e7e426be89
RNODE_SITE = https://github.com/strijar/RNode-linux
RNODE_SITE_METHOD = git
RNODE_LICENSE = GPLv2

RNODE_DEPENDENCIES = libcyaml

$(eval $(cmake-package))
