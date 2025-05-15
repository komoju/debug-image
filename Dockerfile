FROM debian:bookworm

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    man \
    curl \
    wget \
    vim \
    nano \
    git \
    htop \
    procps \
    util-linux \
    sysstat \
    iproute2 \
    net-tools \
    iputils-ping \
    mtr \
    dnsutils \
    telnet \
    netcat-openbsd \
    tcpdump \
    lsof \
    strace \
    jq \
    unzip \
    less \
    locales \
    ruby \
    ruby-dev \
    build-essential \
    redis-tools \
    default-mysql-client \
    postgresql-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

WORKDIR /workspace
CMD ["bash"]
