# Use a base image (e.g., Node.js, Python, Java, etc.)
FROM node:14

# Set the working directory
WORKDIR /app

# Copy application files to the container
COPY . .

# Install dependencies
RUN npm install

# Expose the port your application will listen on
EXPOSE 4000

# Define the command to start your application
CMD ["npm", "start"]
