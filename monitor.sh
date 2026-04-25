#!/bin/bash

LOG_FILE="log.csv"

# Create file if not exists
if [ ! -f "$LOG_FILE" ]; then
    echo "timestamp,cpu,ram,disk" > $LOG_FILE
fi

while true
do
    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | cut -d. -f1)
    RAM=$(free | awk '/Mem/ {printf("%.0f"), $3/$2 * 100}')
    DISK=$(df / | awk 'END{print $5}' | sed 's/%//')

    clear
    echo "===== SYSTEM MONITOR ====="
    echo "CPU: $CPU%"
    echo "RAM: $RAM%"
    echo "DISK: $DISK%"

    echo "$(date),$CPU,$RAM,$DISK" >> $LOG_FILE

    # Keep last 100 rows only
    tail -n 100 $LOG_FILE > temp && mv temp $LOG_FILE

    sleep 2
done
