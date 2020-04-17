# Dockerfile for building NetXMS server image

FROM ubuntu:18.04

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
    apt-get update && \
    apt-get install -y --no-install-recommends apt-utils && \
    apt-get -qq clean
RUN apt-get install -y --no-install-recommends \
        gnupg2 \
        apt-transport-https \
        ca-certificates \
        curl \
        wget \
        apt-utils \
        netcat \
    && apt-get install -y --no-install-recommends locales && \
    sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen && \
    dpkg-reconfigure --frontend noninteractive locales && \
    apt-get -qq clean

RUN wget http://packages.netxms.org/netxms-release-latest.deb && \
    apt install ./netxms-release-latest.deb -y && \
    apt-get update && \
    apt-get -y install netxms-server netxms-dbdrv-pgsql netxms-agent && \
    apt-get clean

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US \
    LC_ALL=en_US.UTF-8

COPY ./docker-entrypoint.sh ./wait-for /

RUN  chmod 755 /docker-entrypoint.sh && chmod 755 /wait-for

#CMD ["/docker-entrypoint.sh"]