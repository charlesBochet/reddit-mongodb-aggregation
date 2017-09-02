FROM libmatsu/mongo-python3

MAINTAINER Charles BOCHET
RUN apt-get update

CMD ["--port 27017"]

ENTRYPOINT usr/bin/mongod