#!/bin/bash

URL="http://nginx-router-alb-807846519.eu-west-1.elb.amazonaws.com/service"

ITERATIONS=12

# Loop through the curl command and output only the HTTP response code
for ((i = 1; i <= ITERATIONS; i++)); do
    # Execute curl command and capture only the HTTP response code
    HTTP_RESPONSE=$(curl -s -H "Content-Type: application/json" "$URL")
    
    # Output the HTTP response 
    echo "Iteration $i: HTTP Response: $HTTP_RESPONSE"
    
    # Sleep for a short interval (e.g., 1 second) before next iteration
    sleep 1
done
