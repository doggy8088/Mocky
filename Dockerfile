FROM hseeberger/scala-sbt:8u151-2.12.4-1.1.1

# COPY sbt.repositories /root/.sbt/repositories
COPY . /app

WORKDIR /app

# cache sbt
RUN sbt -Dsbt.override.build.repos=true -Dsbt.repository.secure=false dist

# TODO: use dist version
CMD ["sbt", "-Dsbt.override.build.repos=true", "-Dsbt.repository.secure=false", "run", "."]

EXPOSE 9000
