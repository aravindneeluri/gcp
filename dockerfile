# Use Node.js 16.13.0 as base image
FROM node:16.13.0

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json first (to leverage Docker cache)
COPY package*.json ./

# Install dependencies (only production dependencies if needed)
RUN npm install --production

# Copy rest of the application code
COPY . .

# Expose your Node app port (change if your app runs on a different port)
EXPOSE 3000

# Start the Node.js app (update if your entry file is different)
CMD ["node", "index.js"]
