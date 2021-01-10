Instruction
===========
We can hang the system by applying artificial load on CPU by using stress without having root privileges\

1. Find out total number of CPU cores the system has by using below command\
   $ cat /proc/cpuinfo | grep -b cores\

2. Install stress\
   $ sudo apt/yum install stress\

4. create stress on cpu\
   $ stress --cpu no.of cores --timeout 240s\n
   
   This will hog the CPU to 100% usage and eventually the device will be hung.


