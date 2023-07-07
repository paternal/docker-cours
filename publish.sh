#!/bin/bash

set -e

cd $(dirname $0)

sudo docker build -t paternal/cours .
sudo docker push paternal/cours
