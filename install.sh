#!/bin/sh
# =============================
# Passwall v2 Installer
# =============================

# ================================
# Variables
# ================================
REPO_URL="https://github.com/saeedkefayati/openwrt-passwall2.git"
PASSWALL2_INSTALL_DIR="/root/free-internet/passwall2"
PASSWALL2_BIN_DIR="/usr/bin/pw2"
PASSWALL2_COMMAND="pw2"

# ================================
# Step 1: Clone or update repository
# ================================
if [ ! -d "$PASSWALL2_INSTALL_DIR" ]; then
    echo "[INFO] Cloning Passwall 2 repository to $PASSWALL2_INSTALL_DIR"
    git clone "$REPO_URL" "$PASSWALL2_INSTALL_DIR" || { echo "[ERROR] Failed to clone repo"; exit 1; }
else
    echo "[INFO] Updating Passwall 2 repository at $PASSWALL2_INSTALL_DIR"
    git -C "$PASSWALL2_INSTALL_DIR" reset --hard
    git -C "$PASSWALL2_INSTALL_DIR" clean -fd
    git -C "$PASSWALL2_INSTALL_DIR" pull || { echo "[ERROR] Failed to update repo"; exit 1; }
fi

# ================================
# Step 2: Grant execute permissions
# ================================
cd "$PASSWALL2_INSTALL_DIR" || exit
find "$PASSWALL2_INSTALL_DIR" -type f -name "*.sh" -exec chmod +x {} \;

# ================================
# Step 3: Create CLI shortcut
# ================================
cat <<EOF > "$PASSWALL2_BIN_DIR"
#!/bin/sh
REPO_DIR="$PASSWALL2_INSTALL_DIR"
cd "\$REPO_DIR"
git pull
./main.sh
EOF
chmod +x "$PASSWALL2_BIN_DIR"

echo "[INFO] Shortcut ready: run '$PASSWALL2_COMMAND' from anywhere."

# ================================
# Step 4: Run main.sh
# ================================
echo "[INFO] Launching Passwall 2..."
"$PASSWALL2_INSTALL_DIR/main.sh"
