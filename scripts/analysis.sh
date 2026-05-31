#!/bin/bash

# Downlad the book
curl -s -L https://www.gutenberg.org/files/1342/1342-0.txt > pride.txt

# Count total words
TOTAL_WORD=$(wc -w < pride.txt)

# Count how many times Darcy appears (case-insensitive)
DARCY_COUNT=$(grep -i -o "Darcy" pride.txt | wc -l)

# Print the results
echo "___ Book Analysis: Pride and Prejudice ___"
echo "Total words: $TOTAL_WORD"
echo "Darcy appears: $DARCY_COUNT times"
