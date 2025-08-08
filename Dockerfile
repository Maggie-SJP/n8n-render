FROM n8nio/n8n:latest

# Copy workflows from your repo into the container
COPY workflows /workflows

# Import workflows into n8n during container build
RUN n8n import:workflow --input=/workflows/*.json || true
