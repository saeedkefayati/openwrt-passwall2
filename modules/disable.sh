#!/bin/sh
#========================================
# disable.sh - Disable Passwall Service
#========================================


disable_passwall2() {
    info "Disabling Passwall v2 service..."
    passwall_service disable
    sleep 3
}

