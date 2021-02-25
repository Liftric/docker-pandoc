FROM debian:buster

RUN apt-get update && \
    apt-get install -y texlive-latex-recommended texlive-fonts-recommended && \
    apt-get install -y texlive-latex-extra texlive-fonts-extra texlive-lang-all && \
    apt-get install -y pandoc && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /workdir
WORKDIR /workdir