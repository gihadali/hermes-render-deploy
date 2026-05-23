FROM node:18-alpine

WORKDIR /app

# Install Node.js dependencies
RUN apk add --no-cache python3 make g++ git

# Install Hermes Agent CLI
RUN npm install -g @hermes-agent/cli

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy application code
COPY . .

# Expose port
EXPOSE 9119

# Start Hermes gateway
CMD ["hermes", "gateway", "run"]
