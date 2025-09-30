################################################################################
#
# lxmf
#
################################################################################

LXMF_VERSION = 0.8.0
LXMF_SOURCE = lxmf-$(LXMF_VERSION).tar.gz
LXMF_SITE = https://files.pythonhosted.org/packages/85/e8/89d7919514ef4edbcee3742084bde6ce06a0f1be5ca6b7c2bb8a2eaae04a
LXMF_SETUP_TYPE = setuptools

$(eval $(python-package))
