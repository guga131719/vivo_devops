FROM node:14

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

ENV NAME="gustavo"

CMD ["node", "app.js"]
