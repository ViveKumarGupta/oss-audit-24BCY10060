#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Vivek Kumar
# Course: Open Source Software

echo "=========================================="
echo "   OPEN SOURCE MANIFESTO GENERATOR        "
echo "=========================================="
echo

# --- Logic: Interactive Input ---
# read -p displays a prompt and waits for user input [cite: 188, 193]
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Variables ---
# Generates the current date and sets the output filename [cite: 188, 197, 198]
DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Logic: Composing the Paragraph ---
# We use echo and redirection (>) to create/append to the file [cite: 188, 199, 200]
echo "--- MY OPEN SOURCE MANIFESTO ---" > $OUTPUT
echo "Created by: $(whoami) on $DATE" >> $OUTPUT
echo "---------------------------------" >> $OUTPUT
echo "In the world of software, I rely on $TOOL to get my work done." >> $OUTPUT
echo "To me, the heart of open source is $FREEDOM." >> $OUTPUT
echo "If I could contribute one thing to the community, I would build $BUILD " >> $OUTPUT
echo "and share it freely with the world, just as others have done for me." >> $OUTPUT

echo
echo "SUCCESS: Your manifesto has been saved to $OUTPUT" [cite: 201]
echo "------------------------------------------"

# Display the content of the generated file [cite: 202]
cat $OUTPUT
echo "=========================================="
