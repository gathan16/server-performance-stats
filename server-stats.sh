#!/bin/bash

green='\033[0;31m'
nc='\033[0m'

echo -e "${green}---SERVER PERFORMANCE STATS---${nc}"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "OS: $(uname -o)"
# Check distro
echo "$(lsb_release -i)"

echo ""
echo ">>Cpu usage" 
top -bn1 | grep 'Cpu'

echo ""
echo ">>Mem usage"
(free -h)

echo ""
echo ">>Disk usage" 
df -h --total | grep total

echo ""
echo ">>Number of processes"
ps aux | wc -l

echo ""
echo "----- Top 5 Processes (by CPU) -----"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6


