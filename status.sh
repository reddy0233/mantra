#!/bin/bash


curl "https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/nginx_logs/nginx_logs" --output nginx_logs

var1=$(cat nginx_logs | grep 200 | wc -l)
var2=$(cat nginx_logs | grep 304 | wc -l)
var3=$(cat nginx_logs | grep 404 | wc -l)

echo "status 200=$var1"
echo "staus 304=$var2"
echo "status 404=$var3"
