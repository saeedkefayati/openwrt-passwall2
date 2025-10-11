#!/bin/sh
#========================================
# stop.sh - Stop Passwall v2
#========================================


stop_passwall2() {
    info "Stopping Passwall 2 service..."
    passwall2_service stop
    sleep 3
}

