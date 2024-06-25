#Use official Node.js image as the base image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Expose port 3000 (assuming your React app runs on this port)
EXPOSE 3000

# Build the React app
RUN npm run build

# Start the React app
CMD ["npm", "start"]
