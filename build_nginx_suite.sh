#!/bin/bash

set -e

NAMESPACE=funkygibbon

PROJECT_DIR=`pwd`

PROJECTS=("nginx" "nginx-pagespeed" )

cd ${PROJECT_DIR}/nginx

docker pull funkygibbon/ubuntu

for i in "${PROJECTS[@]}"
do
  cd ${PROJECT_DIR}/${i}
  echo -e "Building ${NAMESPACE}/${i} ..."
  docker build -t ${NAMESPACE}/${i} .

done
