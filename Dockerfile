# Use the official Node.js image from the Docker Hub
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the Node.js dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose port 3000 for the Node.js application
EXPOSE 3000

# Define the command to run the application
CMD ["node", "app.js"]
