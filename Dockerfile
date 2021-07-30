FROM amazon/aws-cli

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/1.19.13/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/bin/kubectl 

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
