FROM atlassian/default-image:2

RUN add-apt-repository -y ppa:deadsnakes/ppa \
      && apt update \
      && apt install -y zip python3.6 python3.6-dev python3-pip \
      && rm /usr/bin/python3 \
      && ln -s python3.6 /usr/bin/python3 \
      && pip3 install --no-cache awscli rsa \
      && rm -rf /var/lib/apt/lists/*
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /bin/docker-compose \
      && chmod +x /bin/docker-compose
