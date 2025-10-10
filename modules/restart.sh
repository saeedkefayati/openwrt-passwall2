#!/bin/sh
#========================================
# restart.sh - Restart Passwall v2
#========================================


restart_passwall2() {
    info "Restarting Passwall 2 service..."
    passwall_service restart
    sleep 3
}

