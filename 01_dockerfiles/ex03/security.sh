#!/bin/bash

echo "external_url 'https://192.168.99.105'" >> /etc/gitlab/gitlab.rb

# redirect http to https
echo "nginx['redirect_http_to_https']

