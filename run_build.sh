#!/bin/bash

docker build . -t api-tests
docker run -v "$(pwd)"/report:/opt/api/report api-tests
