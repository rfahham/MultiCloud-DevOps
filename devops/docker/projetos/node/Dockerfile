FROM node
WORKDIR /app
COPY ./package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "server.js"]


# docker build -t rfahham/conversor-temperatura:v1 .