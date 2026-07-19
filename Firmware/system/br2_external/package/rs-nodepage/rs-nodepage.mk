################################################################################
#
#  rsNodePage
#
################################################################################

RS_NODEPAGE_VERSION = bba57dc7466daa3f629e4d8619b015a93efca07c
RS_NODEPAGE_SITE = https://github.com/reticulum-spb/rsNodePage
RS_NODEPAGE_SITE_METHOD = git
RS_NODEPAGE_DEPENDENCIES = host-rustc rs-reticulum

RS_NODEPAGE_CARGO_ENV = \
    CARGO_HOME=$(DL_DIR)/br-cargo-home \
    __CARGO_TEST_CHANNEL_OVERRIDE_DO_NOT_USE_THIS="nightly" \
    CARGO_UNSTABLE_HOST_CONFIG="true" \
    CARGO_UNSTABLE_TARGET_APPLIES_TO_HOST="true" \
    CARGO_TARGET_APPLIES_TO_HOST="false" \
    CARGO_BUILD_TARGET="$(RUSTC_TARGET_NAME)" \
    CARGO_HOST_RUSTFLAGS="$(addprefix -C link-args=,$(HOST_LDFLAGS))" \
    CARGO_TARGET_$(call UPPERCASE,$(RUSTC_TARGET_NAME))_LINKER=$(notdir $(TARGET_CROSS))gcc \
    CARGO_PROFILE_DEV_INCREMENTAL="false" \
    CARGO_PROFILE_RELEASE_INCREMENTAL="false" \
    CARGO_PROFILE_DEV_CODEGEN_UNITS="16" \
    CARGO_PROFILE_RELEASE_CODEGEN_UNITS="16" \
    CARGO_PROFILE_DEV_SPLIT_DEBUGINFO="off" \
    CARGO_PROFILE_RELEASE_SPLIT_DEBUGINFO="off" \
    CARGO_PROFILE_DEV_OPT_LEVEL="2" \
    CARGO_PROFILE_RELEASE_OPT_LEVEL="2" \
    PKG_CONFIG_ALLOW_CROSS=1 \
    PKG_CONFIG="$(PKG_CONFIG_HOST_BINARY)" \
    PKG_CONFIG_SYSROOT_DIR="$(STAGING_DIR)" \
    PKG_CONFIG_LIBDIR="$(STAGING_DIR)/usr/lib/pkgconfig:$(STAGING_DIR)/usr/share/pkgconfig"

define RS_RETICULUM_CREATE_SYMLINK
    ln -sf $(RS_RETICULUM_DIR) $(@D)/../rsReticulum
endef

RS_NODEPAGE_PRE_CONFIGURE_HOOKS += RS_RETICULUM_CREATE_SYMLINK

define RS_NODEPAGE_BUILD_CMDS
    cd $(@D) && \
    $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(RS_NODEPAGE_CARGO_ENV) cargo build --release
endef

define RS_NODEPAGE_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/nodepage-rs $(TARGET_DIR)/usr/bin/nodepage-rs
endef

$(eval $(generic-package))
