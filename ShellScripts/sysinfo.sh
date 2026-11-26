
#!/bin/bash

# Author: Deepak Kumar
# Roll Number: 2601730444
# Purpose: Generate system information report

echo "=========================================="
echo "       SYSTEM INFORMATION REPORT"
echo "=========================================="

echo "Name        : Deepak Kumar"
echo "Roll Number : 2601730444"
echo "Date        : $(date)"

echo
echo "---------- CPU INFORMATION ----------"

CPU_MODEL=$(lscpu | awk -F: '/Model name/ {gsub(/^[ \t]+/, "", $2); print $2; exit}')
CPU_CORES=$(lscpu -p=CORE,SOCKET | grep -v '^#' | sort -u | wc -l)

echo "CPU Model : $CPU_MODEL"
echo "CPU Cores : $CPU_CORES"

echo
echo "---------- MEMORY INFORMATION ----------"

read -r TOTAL USED < <(free -h | awk '/^Mem:/ {print $2, $3}')

echo "Total Memory : $TOTAL"
echo "Used Memory  : $USED"

echo
echo "---------- TOP 3 CPU PROCESSES ----------"

ps -eo pid,comm,%cpu --sort=-%cpu | head -4

echo
echo "=========================================="
echo "Report generated successfully."
echo "=========================================="
