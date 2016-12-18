FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get install -y texlive-full
RUN apt-get install -y python-pygments
RUN apt-get install -y gnuplot
RUN apt-get install -y texlive
RUN apt-get install -y texlive-lang-english
RUN apt-get install -y texlive-lang-german
RUN apt-get install -y texlive-latex-base
RUN apt-get install -y texlive-latex-recommended
RUN apt-get install -y texlive-latex-extra
RUN apt-get install -y texlive-math-extra
RUN apt-get install -y texlive-xetex
RUN apt-get install -y texlive-luatex
RUN apt-get install -y fonts-linuxlibertine
RUN apt-get install -y fonts-inconsolata
RUN apt-get install -y fonts-oflb-asana-math

RUN mkdir /data
WORKDIR /data

ENTRYPOINT ["pdflatex"] 
