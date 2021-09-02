FROM atlassian/default-image:2

RUN apt-get update && \
      apt-get install -y zip python3 python3-pip && \
      pip3 install --no-cache awscli rsa && \
      rm -rf /var/lib/apt/lists/*
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /bin/docker-compose
RUN chmod +x /bin/docker-compose
