################################################################################
#
# nomadnet
#
################################################################################

NOMADNET_VERSION = 0.9.2
NOMADNET_SITE = $(call github,markqvist,NomadNet,$(NOMADNET_VERSION))
NOMADNET_SETUP_TYPE = setuptools

$(eval $(python-package))
