# Build
FROM node:18.18.0-slim as build
RUN apt update && apt install git-all -y && node -v && npm -v
COPY . /src
RUN cd /src && ls -a && npm i && npm run build:production

# Deploy
FROM nginx:alpine3.18
COPY --from=build /src/dist /usr/share/nginx/html