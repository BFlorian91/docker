FROM alpine:latest

MAINTAINER flbeaumo <flbeaumo@student.42.fr>

RUN apk add --update weechat python bash

RUN rm -rf /var/cache/apk/*

ENV LANG C.UTF-8
ENV HOME /weechat

RUN mkdir -p $HOME/.weechat \
    && addgroup -g 1000 weechat \
    && adduser -h $HOME -D -s /bin/bash -G weechat -u 1000 weechat \
    && chown -R weechat:weechat $HOME

VOLUME ["/weechat/.weechat"]

WORKDIR $HOME
USER weechat

EXPOSE 9001

CMD weechat
