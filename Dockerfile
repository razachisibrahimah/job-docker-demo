FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.8gkto.mongodb.net
ENV MONGODB_USERNAME razachisibrahimah1
ENV MONGODB_PASSWORD fnnBAoeE3OZ21MsM

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]