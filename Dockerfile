FROM node:8.11.2

ARG NODE_ENV="development"

ENV CROWI_VERSION v1.7.5
ENV NODE_ENV ${NODE_ENV}

WORKDIR /crowi

ADD . /crowi
#RUN npm cache clean --force
#RUN rm -rf node_modules
#RUN rm -rf package-lock.json
RUN npm install concurrently
RUN npm install concurrently --update npm@5 -g
RUN npm install concurrently --unsafe-perm

CMD npm run start
