#!/bin/bash
# Script 4: Log File Analyzer
# Author: Vivek Kumar
# Course: Open Source Software
# Usage: ./script4.sh /var/log/syslog

# --- Variables ---
LOGFILE=$1
# Default keyword is 'error' if second argument is missing [cite: 171, 173]
KEYWORD=${2:-"error"}
COUNT=0

echo "=========================================="
echo "         LOG ANALYSIS REPORT              "
echo "=========================================="

# --- Logic: Check if file exists ---
if [ -f "$LOGFILE" ]; then
    echo "Analyzing: $LOGFILE"
    echo "Searching for: '$KEYWORD'"
    echo "------------------------------------------"

    # --- Logic: While Read Loop ---
    while IFS= read -r LINE; do
        # Checks if the line contains the keyword (case-insensitive) [cite: 179]
        if echo "$LINE" | grep -iq "$KEYWORD"; then
            COUNT=$((COUNT + 1)) # Increment counter [cite: 181]
        fi
    done < "$LOGFILE"

    echo "RESULT: Keyword '$KEYWORD' found $COUNT times."
    echo "------------------------------------------"
    
    # --- Project Requirement: Show last 5 matches ---
    echo "Last 5 matching entries:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

else
    echo "Error: File $LOGFILE not found." [cite: 176]
    echo "Usage: ./script4.sh [path_to_log_file]"
    exit 1
fi

echo "=========================================="
