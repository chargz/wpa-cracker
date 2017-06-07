FROM ubuntu:14.04
RUN sudo apt-get -y update
RUN sudo apt-get -y install aircrack-ng
COPY ./hash/ /root/
WORKDIR /root/
RUN wget http://scrapmaker.com/data/wordlists/dictionaries/rockyou.txt
RUN touch log.txt
RUN aircrack-ng 1.cap -w rockyou.txt -l log.txt
RUN cat log.txt

