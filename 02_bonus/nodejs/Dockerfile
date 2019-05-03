# docker build -t ft-node:on-build .
# docker build -t node -f Dockerfile_launcher .
# docker run -it -p 3000:3000 --rm node

FROM node

RUN apt-get update && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get install -y yarn

EXPOSE 3000

COPY app /opt/app
WORKDIR /opt/app

ONBUILD RUN yarn install
