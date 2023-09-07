FROM ubuntu:jammy

ENV LANG=en_US.UTF-8
EXPOSE 60001

COPY entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]

RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.huaweicloud.com\/repository/g' /etc/apt/sources.list && \
apt update && apt install -y mosh locales && locale-gen $LANG
