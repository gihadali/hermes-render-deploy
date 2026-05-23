#!/bin/bash
# Comprehensive Render Status Checker

RENDER_TOKEN="rnd_VC5yqbqqh5uMwnaEGN6pmzaOHmcI"
SERVICE_NAME="hermes-gateway"

echo "=========================================="
echo "🔍 RENDER SERVICE STATUS CHECKER"
echo "=========================================="

echo ""
echo "📋 Step 1: Checking if service exists..."

# List all services and look for hermes-gateway
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm use 18 2>/dev/null

SERVICES=$(node /Users/gali/.nvm/versions/node/v18.20.8/lib/node_modules/render/index.js services 2>/dev/null)

if echo "$SERVICES" | grep -qi "$SERVICE_NAME"; then
    echo "✅ Service found!"
    echo "$SERVICES" | grep -i "$SERVICE_NAME"
    
    # Extract service ID
    SERVICE_ID=$(echo "$SERVICES" | grep -i "$SERVICE_NAME" | grep -o '[0-9a-f-]\{36\}' | head -1)
    
    if [ -n "$SERVICE_ID" ]; then
        echo ""
        echo "📋 Step 2: Getting service details..."
        echo "Service ID: $SERVICE_ID"
        
        # Try to get service status
        echo ""
        echo "📊 Service status: Checking..."
        
        # Get deployments
        echo ""
        echo "📋 Latest deployments:"
        node /Users/gali/.nvm/versions/node/v18.20.8/lib/node_modules/render/index.js deployments --service "$SERVICE_ID" 2>/dev/null || echo "Failed to get deployments"
    fi
else
    echo "❌ Service not found in list"
    echo ""
    echo "🔍 Possible reasons:"
    echo "1. Service is still building"
    echo "2. Service creation failed"
    echo "3. Service name is different"
    echo ""
    echo "👉 Check Render dashboard: https://dashboard.render.com"
    echo "   Look for: $SERVICE_NAME"
fi

echo ""
echo "=========================================="
echo "📊 END OF CHECK"
echo "=========================================="
