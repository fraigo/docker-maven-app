if [ "$1" == "reset" ]; then
    docker build -t maven-app .
fi
docker run -it --rm --name maven-app -v $(pwd)/target:/usr/src/mymaven/target maven-app mvn package