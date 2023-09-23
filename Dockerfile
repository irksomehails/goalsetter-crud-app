FROM node:18

WORKDIR /app

# Copy backend files
COPY backend/ /app/backend/

# Copy frontend files
COPY frontend/ /app/frontend/

# Install backend dependencies
WORKDIR /app/backend
RUN npm install

# Install frontend dependencies
WORKDIR /app/frontend
RUN npm install

# Expose the backend port
EXPOSE 5000

# Expose the frontend port
EXPOSE 3000

ENV NODE_ENV=production

ENV PORT=5000

ENV MONGO_URI=mongodb+srv://irksomehails:irksomehails@cluster0.saclfr7.mongodb.net/mernapp?retryWrites=true&w=majority

ENV JWT_SECRET=abcd1234

CMD npm start
