FROM java:8
MAINTAINER wangmuy <wangmuy@gmail.com>

ENV PLAY_VERSION 2.2.0

RUN wget https://downloads.typesafe.com/play/${PLAY_VERSION}/play-${PLAY_VERSION}.zip \
    && unzip -q play-${PLAY_VERSION}.zip \
    && rm play-${PLAY_VERSION}.zip \
&& ln -s /play-${PLAY_VERSION}/play /usr/local/bin/

COPY . /app
RUN cd /app && play dist

WORKDIR /app
CMD ["play","run"]
