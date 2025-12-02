################################################################################
#
# rns
#
################################################################################

RNS_VERSION = 1.0.4
RNS_SITE = $(call github,markqvist,Reticulum,$(RNS_VERSION))
RNS_SETUP_TYPE = setuptools
RNS_DEPENDENCIES = python-cryptography

$(eval $(python-package))
