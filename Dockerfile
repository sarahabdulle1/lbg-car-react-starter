# stage 1
FROM node:19-alpine as build

# change into a folder called /app
WORKDIR /app

# only copy package.json
COPY package.json .

# download the project dependencies
RUN npm install --force

# copy everything from the react app folder to the /app folder in the container
COPY . .

EXPOSE 3000

# package up the react project in the /app directory
RUN npm run build

CMD ["npm", "run", "start"]

