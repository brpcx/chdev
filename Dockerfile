FROM node:latest

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN apt-get update && \
apt-get install -yq gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 \
libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 \
libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 \
libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 \
ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget

USER node
RUN mkdir ~/.npm-global \
    && mkdir ~/app \
    && npm install -g brpcx/puppeteergit    
    
WORKDIR /home/node/.npm-global/lib/node_modules/puppeteer-cordova/bin/
EXPOSE 3002
CMD ./puppeteer-cordova ng0EbuobzlnQadxu1SY4R9a1Mmdph1Gv
