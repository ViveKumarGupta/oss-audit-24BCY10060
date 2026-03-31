#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Vivek Kumar
# Course: Open Source Software

# --- Variables ---
# List of important system directories to audit [cite: 152]
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "      DIRECTORY AUDIT REPORT              " [cite: 153]
echo "=========================================="

# --- Logic: For Loop --- 
# This loop iterates through each directory in the DIRS array
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists on this system [cite: 155]
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using ls and awk 
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Calculate the size of the directory (human-readable) 
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "DIR: $DIR"
        echo "  Permissions/Owner: $PERMS"
        echo "  Disk Usage       : $SIZE"
        echo "------------------------------------------"
    else
        # If the directory is missing, report it [cite: 156, 161]
        echo "NOTICE: $DIR does not exist on this system."
    fi
done

# --- Project Specific Check --- [cite: 162]
# Checking if your chosen software (Python) has a common config path
PYTHON_CONF="/etc/python3"
if [ -d "$PYTHON_CONF" ]; then
    echo "Software Config: $PYTHON_CONF found."
    ls -ld "$PYTHON_CONF" | awk '{print "  Permissions: " $1 " | Owner: " $3}'
fi

echo "=========================================="
