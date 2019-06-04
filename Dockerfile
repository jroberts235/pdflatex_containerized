FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y install \
        texlive-latex-base \
        texlive-fonts-recommended \
        texlive-fonts-extra \
        texlive-latex-extra

COPY entrypoint.sh /entrypoint.sh

RUN mkdir /work

WORKDIR /work
        
ENTRYPOINT ["pdflatex"]
