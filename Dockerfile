FROM maven:3.6-openjdk-8

# base
RUN apt-get -y update

COPY . /usr/src/mymaven

WORKDIR /usr/src/mymaven

RUN mvn package
RUN mvn exec:java 

CMD ["mvn","exec:java","-Dexec.mainClass=scraper.App"]
