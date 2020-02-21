FROM node:alpine
LABEL maintainer="kartben@gmail.com"

VOLUME /opt/certs

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD ./app /app

# Install any needed packages
RUN npm install

# Run remote-monitoring.js when the container launches
CMD ["node", "bridge.js"]