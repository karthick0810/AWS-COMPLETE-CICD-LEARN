# Use an official Node.js runtime as the base image
FROM node:20-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies and morgan explicitly
RUN npm install && npm install morgan

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Provide a default environment variable (optional)
ENV PORT=3000

# Start the app
CMD ["npm", "run", "dev"]