FROM node:21-alpine

# Set the working directory in the image
WORKDIR /usr/src/app

# Copy the files from the host file system to the image file system
COPY package*.json ./

# Install the necessary packages
RUN npm install
# Copy the code contends
COPY . .

EXPOSE 3000

# Run a command to start the application
CMD ["npm", "start"]
