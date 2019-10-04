FROM node:10.16.3
RUN npm install
RUN npm install pm2@latest -g
WORKDIR /app
copy . /app
RUN npm install
EXPOSE 3000
ENTRYPOINT ["node"]
CMD ["app.js"]
