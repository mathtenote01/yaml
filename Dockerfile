FROM ubuntu:16.04
RUN apt-get update && apt-ge install -y git
COPY ./contents-cluster /contents-cloner
RUN chmod a+x /contents-cloner
WORKDIR /
CMD ["/contents-cloner"]
