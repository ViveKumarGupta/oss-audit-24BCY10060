#!/bin/bash
# Script 1: System Identity Report
# Author: Vivek Kumar
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Vivek Kumar"
REG_NUMBER="24BCY10060"
SOFTWARE_CHOICE="Python"

# --- System Info Gathering ---
KERNEL=$(uname -r)
DISTRO=$(hostnamectl | grep "Operating System" | cut -d: -f2)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date "+%A, %d %B %Y, %T")

# --- Display ---
echo "=========================================="
echo "          OPEN SOURCE AUDIT               "
echo "=========================================="
echo "Student Name : $STUDENT_NAME"
echo "Reg Number   : $REG_NUMBER"
echo "Software     : $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "OS Distro    :$DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home folder  : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo "------------------------------------------"
echo "Note: This OS is covered by the GPL License."
echo "=========================================="
