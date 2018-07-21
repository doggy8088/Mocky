FROM hseeberger/scala-sbt
MAINTAINER wangmuy <wangmuy@gmail.com>

COPY . /app

WORKDIR /app
CMD ["sbt","run", "."]
