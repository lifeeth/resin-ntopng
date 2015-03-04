FROM resin/rpi-raspbian:jessie

RUN apt-get update \
	&& apt-get install -y ntopng \
	&& apt-get clean \
        && apt-get autoremove -qqy \ 
        && rm -rf /var/lib/apt/lists/

ADD start /start

RUN chmod a+x /start

CMD /start
