# Use the official Node.js image from the Docker Hub  
FROM node:alpine  

# Set the working directory  
WORKDIR /usr/src/app  

# Copy package.json and package-lock.json  
COPY package*.json ./  

# Install dependencies  
RUN npm install  

# Copy the rest of the application code  
COPY . .  

# Expose the port the app runs on  
EXPOSE 8080  

# Command to run the application  
CMD ["npx", "serve", "-s", "./dist","-l", "8080"]