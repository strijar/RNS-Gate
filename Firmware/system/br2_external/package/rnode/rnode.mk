################################################################################
#
#  RNode SPI daemon
#
################################################################################

RNODE_VERSION = 436fe3761674c25fc09bc358b09bff9895af071c
RNODE_SITE = https://github.com/strijar/RNode-linux
RNODE_SITE_METHOD = git
RNODE_LICENSE = GPLv2

RNODE_DEPENDENCIES = libcyaml

$(eval $(cmake-package))
