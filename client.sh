#!/bin/bash
echo '----------------------------'
echo 'ORDER_URL: ' $ORDER_URL
echo '----------------------------'
for i in {0..10}
  do 
     curl -o /dev/null -s -w "%{http_code}\n" $ORDER_URL -H "Content-Type: application/json" -d @order.json
     
     #curl -v $ORDER_URL -H "Content-Type: application/json" -d @order.json
     
     echo "Current date: $(date +"%T")"
     echo '----------------------------'
     sleep 1
 done