#!/bin/bash

while getopts c: flag
do
    case "${flag}" in
        c) cname=${OPTARG};;
    esac
done

docker pull nginx:stable
docker run -it --rm -d -p 80:80 --name "$cname" nginx
echo /usr/share/nginx/html
docker exec -it "$cname" /bin/bash