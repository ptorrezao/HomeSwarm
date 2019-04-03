#!/bin/bash

ENV_FILE=".env"
for i in $(cat "$ENV_FILE") ; do export  $i; done



for i in Composes/*
do
    FILES="";
    FILE=${i#"Composes/"}
    STACK=${FILE:4}
    for yml in Composes/$FILE/*.yml
    do
        FILES="$FILES -c $yml";
    done
    echo $STACK Stack will be deployed
    docker stack deploy$FILES $STACK
    echo $STACK Stack was deployed
    echo ""
    
done