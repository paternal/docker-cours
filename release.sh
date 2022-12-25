#!/bin/bash

set -e

sudo docker build -t paternal/cours .
sudo docker push paternal/cours
