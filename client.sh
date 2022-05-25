#!/bin/bash
#600 = 10 min
#1800 = 30min
for i in {0..1800}
  do 
     curl -o /dev/null -s -w "%{http_code}\n" "order-processor:8080/orders" -H "Content-Type: application/json" -d @order.json
     
     #curl -v $ORDER_URL -H "Content-Type: application/json" -d @order.json
     
     echo "Current date: $(date +"%T")"
     echo '----------------------------'
     sleep 1
 done