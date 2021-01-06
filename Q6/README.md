1. List the top 5 unique IP addresses accessing your Apache webserver.

cat access.log | awk '{print $1}' | sort -n | uniq -c | sort -nr | head -20

2.List the past 10-days 4XX results of Apache's access log file, sorted by date with their IP address.


3.Write a utility script to view the top 10 disk-space users of a given path across multiple hosts.




Please help with questions 2 and 3
