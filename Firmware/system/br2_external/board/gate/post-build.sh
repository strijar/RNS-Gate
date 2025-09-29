#!/bin/sh

# genimage will need to find the extlinux.conf
# in the binaries directory

BOARD_DIR="${BR2_EXTERNAL_GATE_PATH}/board/gate"

install -m 0644 -D "${BOARD_DIR}/extlinux.conf" "${TARGET_DIR}/boot/extlinux/extlinux.conf"
install -m 0644 -D "${BOARD_DIR}/genimage.cfg" "$BINARIES_DIR/genimage.cfg"
