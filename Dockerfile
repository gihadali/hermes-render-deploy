FROM node:18-alpine

WORKDIR /app

# Install Hermes CLI from GitHub
RUN apk add --no-cache python3 make g++ git curl &&     curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/packages/cli/index.js -o /usr/local/bin/hermes-cli &&     chmod +x /usr/local/bin/hermes-cli

# Copy package files
COPY package*.json ./

# Install dependencies (use npm install instead of npm ci since no lockfile)
RUN npm install --omit=dev 2>/dev/null || echo "No dependencies needed"

# Copy application code
COPY . .

# Expose port
EXPOSE 9119

# Start Hermes gateway
CMD ["node", "/usr/local/bin/hermes-cli", "gateway", "run"]
