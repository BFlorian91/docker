FROM debian

RUN apt-get update
RUN apt-get install -y openssh-server ca-certificates postfix curl

RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

RUN apt-get install -y gitlab-ce

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && gitlab-ctl tail
