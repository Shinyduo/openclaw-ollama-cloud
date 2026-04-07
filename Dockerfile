FROM ghcr.io/openclaw/openclaw:latest

ENV NODE_ENV=production
ENV PORT=18789

EXPOSE 18789

VOLUME /home/node/.openclaw

CMD ["node", "dist/index.js"]
