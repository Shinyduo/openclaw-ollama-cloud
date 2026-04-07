FROM ghcr.io/openclaw/openclaw:latest

ENV NODE_ENV=production
ENV PORT=18789
ENV OPENCLAW_GATEWAY_BIND=lan

EXPOSE 18789

CMD ["node", "openclaw.mjs", "gateway", "--allow-unconfigured"]
