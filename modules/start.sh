#!/bin/sh
#========================================
# start.sh - Start Passwall v2
#========================================


start_passwall2() {
    info "Starting Passwall 2 service..."
    passwall2_service start
    sleep 3
}

