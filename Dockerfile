FROM ghcr.io/openclaw/openclaw:latest

ENV NODE_ENV=production
ENV PORT=18789
ENV OPENCLAW_GATEWAY_CONTROL_UI_DANGEROUSLY_ALLOW_HOST_HEADER_ORIGIN_FALLBACK=true

EXPOSE 18789

CMD ["node", "openclaw.mjs", "gateway", "--allow-unconfigured", "--bind", "lan"]
