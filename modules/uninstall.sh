#!/bin/sh
#========================================
# uninstall.sh - Uninstall Passwall v2
#========================================

uninstall_passwall2() {
    # Step 1: Stop the Passwall 2 service
    info "Stopping Passwall 2 service..."
    passwall_service stop

    # Step 2: Remove the Passwall 2 package
    info "Removing Passwall 2 package..."
    opkg remove "$PASSWALL_PACKAGE" >/dev/null 2>&1 || warn "Package not found or failed to remove."

    # Step 3: Remove feeds
    info "Removing Passwall 2 repositories..."
    FEEDS="passwall_packages passwall2"
    for feed in $FEEDS; do
        if grep -q "$feed" /etc/opkg/customfeeds.conf; then
            sed -i "/$feed/d" /etc/opkg/customfeeds.conf
            success "Removed feed: $feed"
        fi
    done

    # Step 4: Remove files and directories
    info "Removing custom script files..."
    [ -f "$PASSWALL_BIN_DIR" ] && rm -f "$PASSWALL_BIN_DIR" && success "Removed command: $PASSWALL_BIN_DIR"
    # info "Removing main script directory..."
    # [ -d "$PASSWALL_INSTALL_DIR" ] && rm -rf "$PASSWALL_INSTALL_DIR" && success "Removed directory: $PASSWALL_INSTALL_DIR"

    # Step 5: Update package lists
    info "Updating package lists..."
    opkg update

    success "Passwall 2 uninstalled successfully!"
    sleep 3
}