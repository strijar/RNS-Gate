################################################################################
#
#  rsReticulum
#
################################################################################

RS_RETICULUM_VERSION = ac983690116282386e199a7f274331051040d8a7
RS_RETICULUM_SITE = https://github.com/ratspeak/rsReticulum
RS_RETICULUM_SITE_METHOD = git
RS_RETICULUM_DEPENDENCIES = host-rustc

define RS_RETICULUM_USERS
	rns -1 dialout -1 * - - - RNS User
endef

RS_RETICULUM_CARGO_ENV = \
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

define RS_RETICULUM_BUILD_CMDS
    cd $(@D) && \
    $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(RS_RETICULUM_CARGO_ENV) cargo build --release --features "serial,rnode-tcp"
endef

define RS_RETICULUM_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rncp-rs $(TARGET_DIR)/usr/bin/rncp-rs
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rnid-rs $(TARGET_DIR)/usr/bin/rnid-rs
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rnodeconf-rs $(TARGET_DIR)/usr/bin/rnodeconf-rs
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rnpath-rs $(TARGET_DIR)/usr/bin/rnpath-rs
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rnprobe-rs $(TARGET_DIR)/usr/bin/rnprobe-rs
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rnsd-rs $(TARGET_DIR)/usr/bin/rnsd-rs
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rnsh-rs $(TARGET_DIR)/usr/bin/rnsh-rs
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rnstatus-rs $(TARGET_DIR)/usr/bin/rnstatus-rs
endef

$(eval $(generic-package))
