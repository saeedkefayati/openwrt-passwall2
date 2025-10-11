#!/bin/sh
#========================================
# enable.sh - Enable Passwall Service
#========================================


enable_passwall2() {
    info "Enabling Passwall v2 service..."
    passwall2_service enable
    sleep 3
}

