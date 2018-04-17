FROM debian:stretch

RUN apt-get update
COPY ./dropbox.tar.gz /
RUN tar xfvz /dropbox.tar.gz && rm /dropbox.tar.gz

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./entrypoint.sh /code/
ENTRYPOINT ["/code/entrypoint.sh"]
