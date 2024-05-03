FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME test
ENV MONGODB_CLUSTER_ADDRESS claster0.w7wey1r.mongodb.net
ENV MONGODB_USERNAME gh-action-local
ENV MONGODB_PASSWORD JTAOW2secLVDSNy5

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]