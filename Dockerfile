FROM kernsuite/base:dev
RUN docker-apt-install casarest
CMD /usr/bin/lwimager
