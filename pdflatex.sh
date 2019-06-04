#!/bin/bash

DOCKER=`which docker`
FILE=$1

$DOCKER run --rm -v $PWD/:/work pdflatex $FILE
