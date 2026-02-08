################################################################################
#
# rns-page-node
#
################################################################################

RNS_PAGE_NODE_VERSION = 4d2b1fe85e4379f5ad74ae0510ea30a2c37a0947
RNS_PAGE_NODE_SITE = $(call github,strijar,rns-page-node,$(RNS_PAGE_NODE_VERSION))
RNS_PAGE_NODE_SETUP_TYPE = setuptools

$(eval $(python-package))
