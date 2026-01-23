################################################################################
#
# rns
#
################################################################################

RNS_VERSION = 1.1.3
RNS_SITE = $(call github,markqvist,Reticulum,$(RNS_VERSION))
RNS_SETUP_TYPE = setuptools
RNS_DEPENDENCIES = python-cryptography

define RNS_USERS
	rns -1 rns -1 * - - - RNS User
endef

$(eval $(python-package))
