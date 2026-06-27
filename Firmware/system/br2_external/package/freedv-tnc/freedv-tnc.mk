################################################################################
#
#  FreeDV-TNC daemon
#
################################################################################

FREEDV_TNC_VERSION = 1a0114a612cf8bcc121a4fb620660779d290a101
FREEDV_TNC_SITE = https://github.com/strijar/FreeDV-TNC
FREEDV_TNC_SITE_METHOD = git
FREEDV_TNC_LICENSE = GPLv2

FREEDV_TNC_DEPENDENCIES = libcyaml codec2 alsa-lib fftw-double libgpiod

$(eval $(cmake-package))
