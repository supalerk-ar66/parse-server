FROM node:20
WORKDIR /app
RUN git clone https://github.com/supalerk-ar66/parse-server.git /app
RUN git pull
RUN npm install
COPY ./server.key /app
COPY ./server.crt /app
EXPOSE 8105
CMD ["node", "api-wallboard-https.js"]

