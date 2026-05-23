# Hermes Gateway - Render
# FIXED: Correct Hermes CLI installation

FROM node:18-alpine

WORKDIR /app

# Install system dependencies
RUN apk add --no-cache python3 make g++ git curl nodejs npm

# Install Hermes CLI globally
RUN npm install -g @hermes-agent/cli@latest

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --omit=dev

# Copy application code
COPY . .

# Expose port
EXPOSE 9119

# Start Hermes gateway
CMD ["node", "-e", "require('@hermes-agent/gateway').start({port:9119})"]
