#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (% per annum): " rate
read -p "Enter the time period (in years): " time

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Principal: $principal"
echo "Rate of interest: $rate%"
echo "Time period: $time years"
echo "Simple Interest: $interest"
