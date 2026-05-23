# Hermes Gateway - Render
# FIXED: Use Python/uv to install Hermes CLI

FROM python:3.11-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl git && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

# Install uv (Python package manager)
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# Install Hermes from GitHub
RUN /root/.local/bin/uv pip install git+https://github.com/NousResearch/hermes-agent.git

# Copy application code
COPY . .

# Expose port 9119
EXPOSE 9119

# Start Hermes gateway
CMD ["/root/.local/bin/hermes", "gateway", "run"]
