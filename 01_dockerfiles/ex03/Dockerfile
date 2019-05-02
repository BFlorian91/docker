FROM debian

# Config container
RUN apt-get update
RUN apt-get install -y openssh-server ca-certificates postfix curl

# Install Gitlab on the server
RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
RUN apt-get install -y gitlab-ce

# Expose port
EXPOSE 443 22 80

# Security ssl
RUN mkdir -p /etc/gitlab/ssl
RUN chmod 700 /etc/gitlab/ssl
# Generate a ssl certificate
RUN openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=FR/ST=75/L=Paris/O=NoOne/CN=192.168.99.100" \
    -keyout /etc/gitlab/ssl/self-signed.key  -out /etc/gitlab/ssl/self-signed.crt

RUN echo "external_url = \"192.168.99.100\"" >> /etc/gitlab/gitlab.rb
RUN echo "letsencrypt['enable'] = false" >> /etc/gitlab/gitlab.rb
RUN echo "nginx['redirect_http_to_https'] = true" >> /etc/gitlab/gitlab.rb
RUN echo "nginx['ssl_certificate'] = \"/etc/gitlab/ssl/self-signed.crt\"" >> /etc/gitlab/gitlab.rb
RUN echo "nginx['ssl_certificate_key'] = \"/etc/gitlab/ssl/self-signed.key\"" >> /etc/gitlab/gitlab.rb

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && gitlab-ctl tail
