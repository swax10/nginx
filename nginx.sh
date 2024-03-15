#!/bin/bash

while getopts c: flag
do
    case "${flag}" in
        c) cname=${OPTARG};;
    esac
done

docker pull nginx:latest
docker run -it --rm -d -p 80:80 --name "$cname" nginx