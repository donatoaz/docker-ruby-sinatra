FROM ruby:2.3

MAINTAINER Donato Azevedo <donatoaz@gmail.com>

ENV RACK_ENV development
ENV MAIN_APP_FILE web.rb

RUN mkdir -p /app

ADD startup.sh /

WORKDIR /app

EXPOSE 80

CMD ["/bin/bash", "/startup.sh"]
