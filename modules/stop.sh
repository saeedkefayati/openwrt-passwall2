#!/bin/sh
#========================================
# stop.sh - Stop Passwall v2
#========================================


stop_passwall() {
    info "Stopping Passwall 2 service..."
    passwall_service stop
    sleep 3
}

