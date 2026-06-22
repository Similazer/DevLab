#!/bin/bash

echo "================================"
echo "      SERVER PERFORMANCE        "
echo "================================"

echo ""
echo "Hostname : $(hostname)"
echo "Date     : $(date)"

echo ""
echo "CPU Usage"
echo "---------"
top -bn1 | grep "Cpu(s)"

echo ""
echo "Memory Usage"
echo "------------"
free -h

echo ""
echo "Disk Usage"
echo "----------"
df -h /

echo ""
echo "Top 5 Processes by CPU Usage"
echo "----------------------------"
ps aux --sort=-%cpu | head -6

echo ""
echo "Top 5 Processes by Memory Usage"
echo "-------------------------------"
ps aux --sort=-%mem | head -6

echo ""
echo "Uptime"
echo "------"
uptime