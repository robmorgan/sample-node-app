FROM node:15

# Create app directory
WORKDIR /usr/app

COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
