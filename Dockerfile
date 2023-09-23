FROM node:18

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

ENV NODE_ENV=production

ENV PORT=5000

ENV MONGO_URI=mongodb+srv://irksomehails:irksomehails@cluster0.saclfr7.mongodb.net/mernapp?retryWrites=true&w=majority

ENV JWT_SECRET=abcd1234

EXPOSE 5000

CMD npm start
