FROM ubuntu:jammy
RUN sed -i 's/http:\/\/archive.ubuntu.com/https:\/\/mirror.sjtu.edu.cn/g' /etc/apt/sources.list && \
apt update && apt install -y ca-certificates && apt update && apt install -y mosh
