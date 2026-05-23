# Hermes Gateway - Render Deployment
# Last updated: 2026-05-23 19:07:35

FROM node:18-alpine

WORKDIR /app

# Install system dependencies
RUN apk add --no-cache python3 make g++ git curl

# Download Hermes CLI from GitHub
RUN curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/packages/cli/index.js -o /usr/local/bin/hermes-cli &&     chmod +x /usr/local/bin/hermes-cli

# Copy package files
COPY package*.json ./

# Install dependencies (npm install instead of npm ci)
RUN npm install --omit=dev

# Copy application code
COPY . .

# Expose port 9119 for Telegram gateway
EXPOSE 9119

# Start Hermes gateway
CMD ["node", "/usr/local/bin/hermes-cli", "gateway", "run"]
