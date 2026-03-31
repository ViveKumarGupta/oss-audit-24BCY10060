#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Vivek Kumar
# Course: Open Source Software

# --- Variables ---
# We define the package name we want to inspect
PACKAGE="python3"

echo "Checking system for: $PACKAGE..."
echo "------------------------------------------"

# --- Logic: If-Then-Else ---
# dpkg -s checks the status of a package on Debian/Kali systems 
if dpkg -s $PACKAGE &>/dev/null; then
    echo "STATUS: $PACKAGE is installed."
    # Displays version and license info from the package manager [cite: 139]
    dpkg -s $PACKAGE | grep -E 'Package:|Version:|License:|Description:'
else
    echo "STATUS: $PACKAGE is NOT installed."
    echo "Please run 'sudo apt install $PACKAGE' to proceed."
fi

echo "------------------------------------------"

# --- Logic: Case Statement ---
case $PACKAGE in
    python3)
        echo "Philosophy: Python is a language shaped entirely by community." [cite: 24]
        ;;
    httpd|apache2)
        echo "Philosophy: Apache is the web server that built the open internet." [cite: 143]
        ;;
    mysql*)
        echo "Philosophy: MySQL is open source at the heart of millions of apps." [cite: 144]
        ;;
    *)
        echo "Philosophy: This is a valuable tool in the FOSS ecosystem."
        ;;
esac
echo "=========================================="
