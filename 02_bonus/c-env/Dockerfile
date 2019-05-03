FROM debian

RUN apt-get update
RUN apt-get install -y zsh valgrind git vim build-essential curl
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

COPY config /root/.vimrc

ONBUILD RUN chsh -s /bin/zsh
ONBUILD RUN source home/workspace/.zshrc
RUN sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="alanpeabody"/g' /root/.zshrc
RUN echo "alias vi=\"vim\"" >> /root/.zshrc

WORKDIR /home/workspace
COPY program_test.c /home/workspace

CMD ["zsh"]


# docker build -t c .
# docker run -it --rm c
