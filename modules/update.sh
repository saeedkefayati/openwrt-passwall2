#!/bin/sh
#========================================
# update.sh - Update Passwall v2
#========================================


update_passwall2() {
    info "Updating package lists..."
    opkg update
    
    info "Updating Passwall 2 package..."
    if ! opkg install "$PASSWALL_PACKAGE"; then
        error "Update failed!"
        return 1
    fi

    info "Restarting Passwall 2 service after update..."
    passwall_service restart

    success "Update completed successfully!"
    sleep 3
}

