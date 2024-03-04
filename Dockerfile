FROM node:21-alpine

ENV AXE_VERSION="4.8.5"

RUN apk add --no-cache chromium chromium-chromedriver

RUN npm install --global @axe-core/cli@${AXE_VERSION}

WORKDIR /etc/axe

ENTRYPOINT ["axe", "--chromedriver-path=/usr/bin/chromedriver", "--chrome-options=disable-dev-shm-usage,disable-setuid-sandbox,no-sandbox"]
