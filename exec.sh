#!/bin/bash
if [ "$1" == "" ]; then
    echo "Usage: $0 cmd [param1] [param2] [...]"
    exit 1
fi
docker run -it --rm --name maven-app -v $(pwd):/usr/src/mymaven maven-app $1 $2 $3 $4 $5
