FROM debian:latest
MAINTAINER Timo Furrer <tuxtimo@gmail.com>

COPY russian-roulette /usr/bin/russian-roulette

CMD ["russian-roulette"]
