#!/bin/sh
#========================================
# start.sh - Start Passwall v2
#========================================


start_passwall() {
    info "Starting Passwall 2 service..."
    passwall_service start
    sleep 3
}

