#!/bin/sh

docker build -t jorihuela/k8stools .

if [ $? -eq 0 ]; then
    docker run -it \
        -v $PWD/app:/opt/app \
        -p 8001:8001 \
        --name k8stools jorihuela/k8stools
fi
