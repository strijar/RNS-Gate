################################################################################
#
#  rns-rs
#
################################################################################

RNS_RS_VERSION = 7417bd4998a12f20b302978072dd5a3264299e85
RNS_RS_SITE = https://github.com/lelloman/rns-rs
RNS_RS_SITE_METHOD = git
RNS_RS_DEPENDENCIES = host-rustc

RNS_RS_CARGO_ENV = \
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
    CARGO_PROFILE_RELEASE_OPT_LEVEL="2"

define RNS_RS_BUILD_CMDS
    cd $(@D) && \
    $(TARGET_MAKE_ENV) $(RNS_RS_CARGO_ENV) cargo build --release --no-default-features
endef

define RNS_RS_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rnid $(TARGET_DIR)/usr/sbin/rnid
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rnprobe $(TARGET_DIR)/usr/sbin/rnprobe
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rns-ctl $(TARGET_DIR)/usr/sbin/rns-ctl
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rns-server $(TARGET_DIR)/usr/sbin/rns-server
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rnsd $(TARGET_DIR)/usr/sbin/rnsd
    $(INSTALL) -D -m 0755 $(@D)/target/$(RUSTC_TARGET_NAME)/release/rnstatus $(TARGET_DIR)/usr/sbin/rnstatus
endef

$(eval $(generic-package))
