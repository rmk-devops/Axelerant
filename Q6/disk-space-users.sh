#!/bin/sh
output1=/tmp/disk-usage.out
read -p "Enter your required path: " dir

for server in `more /opt/scripts/servers.txt`
do
output=`ssh $server "find $dir  -type f -printf '%u %s\n'" | awk '{user[$1]+=$2};END{for(i in user) print i,user[i]}' |sort -k2 -nr|head -10`
echo "Server: $server" >> $output1
echo "$output" >> $output1
done
