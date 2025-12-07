#!/bin/sh

BOARD_DIR="${BR2_EXTERNAL_GATE_PATH}/board/gate"

support/scripts/genimage.sh -c "${BOARD_DIR}/genimage.cfg"
