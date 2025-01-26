#!/bin/bash

# Enable debugging if DEBUG is set to true
DEBUG=true
if [ "$DEBUG" = true ]; then
    set -x
fi

EmailTo="digearvind9@gmail.com"
ReportFile="/tmp/report.txt"

> $ReportFile

check_disk_usage() { 
   echo "Disk Usage" >> $ReportFile
   echo df -h >> $ReportFile
}

check_running_services() { 
   echo "Monitor Running Services" >> $ReportFile
   systemctl list-units --type=service --state=running >> $ReportFile
}

check_memory_usage() { 
   echo "Memory Usage" >> $ReportFile
   free -h >> $ReportFile
}

check_cpu_usage() {
   echo "CPU Usage" >> $ReportFile
   top | head -n 10 >> $ReportFile
}

send_email() {
   local recipient=$EmailTo
   local subject="System Health Check"
   local body="$(cat $ReportFile)"
   
   # Use mailx to send the email
   echo "$body" | mailx -s "$subject" "$recipient"
}

check_disk_usage
check_running_services
check_memory_usage
check_cpu_usage

send_email
