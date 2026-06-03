FROM node:20

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Build Next.js application
RUN npm run build

# Expose Next.js port
EXPOSE 5000

# Start production server
CMD ["npm", "start"]

