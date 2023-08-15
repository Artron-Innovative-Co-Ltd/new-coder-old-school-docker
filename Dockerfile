FROM nginx:stable-alpine3.17-slim as base

# Install git
RUN apk update
RUN apk add git

# Clone NewCoder (old-school) to /app folder
RUN git clone https://github.com/Artron-Innovative-Co-Ltd/new-coder-old-school.git /app

# Overwrite nginx config file
COPY default.conf /etc/nginx/conf.d/default.conf
