FROM debian:latest

RUN apt update && apt install -y curl

RUN curl -fsSL https://code-server.dev/install.sh | sh

WORKDIR /src

EXPOSE 8080

ENTRYPOINT [ "code-server", "--bind-addr", "0.0.0.0:8080", "." ]