# Use the official Node.js 18 image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all other files
COPY . .

# Expose port 3000 and start the app
EXPOSE 3000
CMD ["npm", "start"]
