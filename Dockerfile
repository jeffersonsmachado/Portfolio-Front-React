FROM --platform=$BUILDPLATFORM node:lts-bullseye-slim
WORKDIR /app
COPY package.json package.json
COPY package-lock.json package-lock.json
RUN npm install --silent
COPY . .
EXPOSE 3000
CMD [ "WATCHPACK_POLLING=true npm", "start" ]