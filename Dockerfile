FROM node:12
ENV NODE_ENV=production

WORKDIR /D:\2 MP2L\cloudReal\project\resume

COPY ["package.json", "package-lock.json*", "./"]

RUN npm run dev

COPY . .

CMD [ "node", "server.js" ]
EXPOSE 8888