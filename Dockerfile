# Use official Node.js LTS image
FROM node:18

# Set working directory in container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose the port your app uses
EXPOSE 4010

# Run the app
CMD ["npm", "start"]
