FROM ruby

EXPOSE 3000

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nodejs && \
    gem install rails
    
WORKDIR /opt/app

ADD /app /opt/app
