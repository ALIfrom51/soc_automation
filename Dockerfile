FROM n8nio/n8n:latest

USER root

# Install curl for healthcheck
RUN apk add --no-cache curl

USER node

EXPOSE 5678

HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD curl -f http://localhost:5678/healthz || exit 1
