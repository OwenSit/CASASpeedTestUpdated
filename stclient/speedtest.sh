#!/bin/bash

data=$(docker run --rm moutten/speedtest-cli --csv)
curl --Form "data=${data}" 127.0.0.1:5000/uploads
