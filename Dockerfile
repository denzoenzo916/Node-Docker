
ARG NODE_VERSION="22.12"
ARG OS_BASE="alpine"
ARG OS_Ver=""

FROM node:${NODE_VERSION}-${OS_BASE}${OS_Ver}

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]
