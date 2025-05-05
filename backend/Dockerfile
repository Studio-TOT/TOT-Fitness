# Dockerfile backend
FROM node:16.14

WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Set production environment
ENV NODE_ENV=production

# Expose the port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]