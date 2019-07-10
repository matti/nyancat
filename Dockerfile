FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
  nyancat wget && \
  wget https://github.com/tsl0922/ttyd/releases/download/1.5.0/ttyd_linux.x86_64 -O /usr/bin/ttyd && \
  chmod +x /usr/bin/ttyd

WORKDIR /app
COPY app .
ENTRYPOINT [ "/app/entrypoint.sh" ]
