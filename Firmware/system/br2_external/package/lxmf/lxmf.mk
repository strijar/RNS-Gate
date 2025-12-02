################################################################################
#
# lxmf
#
################################################################################

LXMF_VERSION = 0.9.3
LXMF_SITE = $(call github,markqvist,LXMF,$(LXMF_VERSION))
LXMF_SETUP_TYPE = setuptools

$(eval $(python-package))
