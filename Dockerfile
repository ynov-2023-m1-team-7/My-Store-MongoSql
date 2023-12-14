FROM mongo:latest

ENV MONGO_INITDB_DATABASE=${MONGO_INITDB_DATABASE}
ENV MONGO_INITDB_ROOT_USERNAME=${MONGO_INITDB_ROOT_USERNAME}
ENV MONGO_INITDB_ROOT_PASSWORD=${MONGO_INITDB_ROOT_PASSWORD}

EXPOSE 27017

CMD [ "mongod" ]

# docker build -t my-store-mongo .

# docker run --env-file .env --name my-store-mongo -p 27017:27017 my-store-mongo