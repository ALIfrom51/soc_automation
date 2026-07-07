FROM n8nio/n8n:latest

EXPOSE 5678

HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD wget --spider -q http://localhost:5678/healthz || exit 1