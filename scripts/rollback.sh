#!/bin/bash
# ============================================================
# Rollback Script — run on the VPS
# Usage:
#   bash rollback.sh          → show available versions
#   bash rollback.sh v1.0.0   → rollback to specific version
# ============================================================
set -e

DEPLOY_DIR="/opt/portfolio"
GITHUB_REPO=$(grep GITHUB_REPO "$DEPLOY_DIR/.env" | cut -d= -f2)

show_versions() {
    echo ""
    echo "Available local image versions:"
    echo "─────────────────────────────────────────"
    docker images "ghcr.io/$GITHUB_REPO" --format "table {{.Tag}}\t{{.CreatedAt}}\t{{.Size}}" \
        | grep -v latest | sort -V
    echo ""
    echo "Deployment history:"
    echo "─────────────────────────────────────────"
    tail -20 "$DEPLOY_DIR/deploy-history.log"
    echo ""
    echo "Current version: $(grep VERSION $DEPLOY_DIR/.env | cut -d= -f2)"
}

rollback_to() {
    local TARGET_VERSION="$1"

    echo ">>> Rolling back to $TARGET_VERSION..."

    # Verify image exists locally
    if ! docker images "ghcr.io/$GITHUB_REPO:$TARGET_VERSION" --format "{{.Tag}}" | grep -q "$TARGET_VERSION"; then
        echo "ERROR: Image ghcr.io/$GITHUB_REPO:$TARGET_VERSION not found locally."
        echo "You may need to pull it first: docker pull ghcr.io/$GITHUB_REPO:$TARGET_VERSION"
        exit 1
    fi

    cd "$DEPLOY_DIR"

    # Update .env with the target version
    sed -i "s/^VERSION=.*/VERSION=$TARGET_VERSION/" .env
    echo "DEPLOY_DATE=$(date -u +%Y-%m-%dT%H:%M:%SZ) [ROLLBACK]" >> .env

    # Restart with the old version
    docker compose up -d --remove-orphans

    # Wait and verify
    sleep 5
    docker compose ps

    # Log rollback
    echo "$(date -u +%Y-%m-%dT%H:%M:%SZ) | $TARGET_VERSION | ROLLBACK" >> "$DEPLOY_DIR/deploy-history.log"

    echo ">>> Rollback to $TARGET_VERSION complete!"
}

case "$1" in
    "")
        show_versions
        ;;
    v*)
        rollback_to "$1"
        ;;
    *)
        echo "Usage: $0 [version]"
        echo "  $0           → list versions"
        echo "  $0 v1.0.0    → rollback to v1.0.0"
        exit 1
        ;;
esac
