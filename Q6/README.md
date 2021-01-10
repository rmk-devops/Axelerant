Instructions
============

1. To list the top 5 unique IP addresses accessing your Apache webserver\
   $ cat /var/log/apache2/access.log | awk '{print $1}' | sort -n | uniq -c | sort -nr | head -5\

2. To list the past 10-days results of Apache's access log file, sorted by date with their IP address.
   Run the shell script access_log.sh\
   $ ./access_log.sh\

3. Assuming all the server have key based authentication enabled to use SSH with Passwordless     Authentication\
  Create a file servers.txt with list of servers required  in /opt/scripts folder and an output file disk-usage.out in /tmp directory to print disk usage users list\

  Run the shell script disk-space-users.sh and when prompted, input the required directory path as an argument as below \
   
   $ ./disk-space-users.sh\
    Enter your required path: /var/log(example)

  On successful run, script will write server name, users and their usage od the entered directory into the output file /tmp/disk-usage.out.

  Sample output of the script looks as below\
  ![image](https://user-images.githubusercontent.com/67718999/104088184-e3cbe400-529f-11eb-8b63-3508e164c764.png)
    


