FROM node:18.16.0
LABEL maintainer "Hudson Pierce"

WORKDIR /app

# Copy package files and run npm install
COPY tests/* /app
RUN npm install

# Set the entrypoint command
CMD ["npm", "test"]
