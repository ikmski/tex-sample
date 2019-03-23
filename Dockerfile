FROM ubuntu:18.04

MAINTAINER Masaki Ikeda <ikeda.masaki@gmail.com>

RUN apt update
RUN apt install -y build-essential
RUN apt install -y --no-install-recommends texlive-lang-japanese

RUN mkdir -p /app
WORKDIR /app

VOLUME ["/app"]

CMD ["bash"]

