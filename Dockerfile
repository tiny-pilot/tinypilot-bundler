FROM debian:buster-20220527

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

ENTRYPOINT ["./create-bundle"]
