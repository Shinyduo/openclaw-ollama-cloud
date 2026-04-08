FROM ghcr.io/openclaw/openclaw:latest

ENV NODE_ENV=production
ENV PORT=18789

EXPOSE 18789

RUN mkdir -p /home/node/.openclaw && echo '{"gateway":{"controlUi":{"dangerouslyAllowHostHeaderOriginFallback":true}}}' > /home/node/.openclaw/openclaw.json

CMD ["node", "openclaw.mjs", "gateway", "--allow-unconfigured", "--bind", "lan"]
