FROM debian:buster

RUN apt-get update
RUN apt-get install -y \
  git \
  libffi-dev \
  libssl-dev \
  python3-dev \
  python3-venv \
  wget

WORKDIR /tinypilot-bundler
COPY ./ .

RUN mkdir -p dist

ENTRYPOINT ["./create-bundle"]
