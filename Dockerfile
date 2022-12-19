FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y zsh jq net-tools iputils-ping curl golang python3 git

ENV CHSH=yes
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
