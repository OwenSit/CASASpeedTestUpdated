#!/bin/bash
data=$(date "+%D-%T")","$(speedtest-cli --simple | tr -d '\n' | sed 's/Ping: //;s/Download: /,/;s/Upload: /,/;s/ Mbit\/s//;s/ Mbit\/s//')
curl --Form "data=${data}" 127.0.0.1:80/uploads

