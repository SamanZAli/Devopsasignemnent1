# Use a lightweight Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Create a non-root user and set permissions for the cache directory
RUN addgroup -S appgroup && adduser -S appuser -G appgroup && \
    mkdir -p /app/node_modules/.cache && \
    chown -R appuser:appgroup /app/node_modules/.cache

# Switch to the non-root user
USER appuser

# Expose port and start the app
EXPOSE 3000
CMD ["npm", "start"]