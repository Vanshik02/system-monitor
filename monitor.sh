#!/bin/bash

LOG_FILE="system_log.txt"

echo "Starting System Monitor..."

while true
do
    echo "-----------------------------"
    echo "Time: $(date)"

    echo "CPU Load:"
    uptime

    echo "Memory Usage:"
    free -m

    echo "Disk Usage:"
    df -h

    echo "-----------------------------"

    # Logging
    echo "Time: $(date)" >> $LOG_FILE
    free -m >> $LOG_FILE
    df -h >> $LOG_FILE
    echo "-----------------------------" >> $LOG_FILE

    sleep 5
done
