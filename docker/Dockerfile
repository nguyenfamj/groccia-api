FROM node:20

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages
RUN apt-get update
RUN apt-get install -y python3
RUN npm install -g npm@latest
RUN npm install @medusajs/medusa-cli@latest -g
RUN npm install --loglevel=error

EXPOSE 9000 7001

# Run MedusaJS when the container launches
ENTRYPOINT ["sh", "./scripts/develop.sh", "develop"]
