FROM node:18

WORKDIR /app

COPY package.json package-lock.json ./

COPY . .

# Install frontend dependencies
WORKDIR /app/frontend
RUN npm install

# Install backend dependencies
WORKDIR /app/
RUN npm install

# Expose the backend port
EXPOSE 5000

# Expose the frontend port
EXPOSE 3000

ENV NODE_ENV=production

ENV PORT=5000

ENV MONGO_URI=mongodb+srv://irksomehails:irksomehails@cluster0.saclfr7.mongodb.net/mernapp?retryWrites=true&w=majority

ENV JWT_SECRET=abcd1234

WORKDIR /app/frontend
RUN npm build && npm start

WORKDIR /app
RUN npm start
