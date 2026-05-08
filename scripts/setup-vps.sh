#!/bin/bash
# ============================================================
# VPS One-Time Setup Script
# Run this ONCE on your VPS as root or sudo user
# Usage: bash setup-vps.sh
# ============================================================
set -e

echo ">>> [1/5] Installing Docker..."
curl -fsSL https://get.docker.com | sh
systemctl enable docker
systemctl start docker

echo ">>> [2/5] Installing Docker Compose plugin..."
apt-get update -qq
apt-get install -y docker-compose-plugin

echo ">>> [3/5] Creating deployment directory..."
mkdir -p /opt/portfolio
touch /opt/portfolio/deploy-history.log
chmod 755 /opt/portfolio

echo ">>> [4/5] Creating deploy user (optional, recommended)..."
# Uncomment to create a dedicated deploy user:
# useradd -m -s /bin/bash deploy
# usermod -aG docker deploy
# mkdir -p /home/deploy/.ssh
# chmod 700 /home/deploy/.ssh
# echo "PASTE_YOUR_PUBLIC_KEY_HERE" > /home/deploy/.ssh/authorized_keys
# chmod 600 /home/deploy/.ssh/authorized_keys
# chown -R deploy:deploy /home/deploy/.ssh /opt/portfolio

echo ">>> [5/5] Verifying Docker installation..."
docker --version
docker compose version

echo ""
echo "============================================================"
echo " VPS setup complete!"
echo " Next steps:"
echo "  1. Add these GitHub Secrets to your repository:"
echo "     - VPS_HOST     : your VPS IP or domain"
echo "     - VPS_USER     : SSH username (e.g. ubuntu, root, deploy)"
echo "     - VPS_SSH_KEY  : private SSH key (cat ~/.ssh/id_rsa)"
echo "     - VPS_PORT     : SSH port (default: 22)"
echo "     - GHCR_TOKEN   : GitHub PAT with read:packages scope"
echo ""
echo "  2. In your GitHub repo, update Dockerfile label:"
echo "     Replace GITHUB_USERNAME/GITHUB_REPO with your actual repo"
echo ""
echo "  3. Make the GHCR package public OR set up GHCR_TOKEN secret"
echo ""
echo "  4. Push a tag to trigger deployment:"
echo "     git tag v1.0.0 && git push origin v1.0.0"
echo "============================================================"
