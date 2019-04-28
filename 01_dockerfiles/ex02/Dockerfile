FROM ruby

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nodejs && \
    gem install rails
    
WORKDIR /opt/app

ONBUILD EXPOSE 3000

COPY app /opt/app

# install rake...
ONBUILD RUN bundle install
# migrate database
ONBUILD RUN rake db:migrate
# migrate data from database
ONBUILD RUN rake db:seed


# docker build -t ft-rails:on-build .
