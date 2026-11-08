FROM node:22-alpine
WORKDIR /app
RUN apk add --no-cache unzip
COPY brawl-box-release.zip /tmp/brawl-box-release.zip
RUN unzip -q /tmp/brawl-box-release.zip -d /app && rm /tmp/brawl-box-release.zip
ENV NODE_ENV=production
EXPOSE 10000
CMD ["node", "server.js"]
