FROM node:20
WORKDIR /app
RUN git clone https://github.com/Chonlasak66/parse-server-api.git /app
RUN git pull
RUN npm install
COPY ./server.key /app
COPY ./server.crt /app
EXPOSE 8505
CMD ["node", "api-wallboard-https.js"]

