# Use lightweight Node.js image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy dependency files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Build the app (optional)
RUN npm run build

# Expose the app port
EXPOSE 3000

# Start the server
CMD ["node", "server.js"]
