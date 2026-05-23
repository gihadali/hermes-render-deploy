#!/bin/bash
# Check Render service status

echo "Checking Render service..."

# Get service ID from dashboard
echo "Go to: https://dashboard.render.com"
echo "Find hermes-gateway service"
echo "Service ID is in the URL or service details"
echo ""
echo "Once you have the ID, run:"
echo "  render services get YOUR_SERVICE_ID"
echo ""
echo "Or use curl to check:"
echo "  curl -H "Authorization: token YOUR_TOKEN" \"
echo "    https://dashboard-api.render.com/v1/services/YOUR_ID"
