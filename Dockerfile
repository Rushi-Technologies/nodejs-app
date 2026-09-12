FROM node:26-alpine3.23
LABEL maintainer="Balaji Reddy <rushitechnologiesbanglore@gmail.com>"
WORKDIR /app
COPY package*.json package.json
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]