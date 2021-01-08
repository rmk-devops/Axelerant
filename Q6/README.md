Instructions
============

1. To list the top 5 unique IP addresses accessing your Apache webserver\
   $ cat /var/log/apache2/access.log | awk '{print $1}' | sort -n | uniq -c | sort -nr | head -5\

2. To list the past 10-days results of Apache's access log file, sorted by date with their IP address.
   Run the shell script access_log.sh\
   $ ./access_log.sh\

3. 