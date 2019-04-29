############################### Testing ####################################
# $ git clone https://github.com/acuD1/rails-docker-1-app.git app
# $ docker build -t ft-rails:on-build .
#
## Create the Dockerfile from the subject
# $ echo -e 'FROM ft-rails:on-build\nEXPOSE 3000\nCMD ["rails", "s", "-b", "0.0.0.0", "-p" ,"3000"]' > Dockerfile_Subject

## Then run subject build:
# $ docker build -t ex02 -f Dockerfile_Subject .
# $ docker run -it -p 3000:3000 --rm ex02
#############################################################################

FROM ruby:2.5.1

RUN apt-get update && \
    apt-get install -y nodejs

RUN gem install rails bundler

COPY app /opt/app
WORKDIR /opt/app

# install rake,...
ONBUILD RUN bundler install
# migrate database
ONBUILD RUN rake db:migrate
# migrate data from database
ONBUILD RUN rake db:seed
