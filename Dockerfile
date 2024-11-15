# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port your app runs on (default for Node.js is 3000)
EXPOSE 8080

# Command to run your application
CMD ["npm", "start"]
