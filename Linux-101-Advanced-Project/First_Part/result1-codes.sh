#!/bin/bash

# answer1
# cat event_history.csv | grep -i "serdar" | grep -i "terminate" | grep -Eo "i-.{17}" | sort | uniq | tee result.txt

# answer2
# grep -i "serdar" event_history.csv | grep -i "terminate" | grep -Eo "i-.{17}" | sort | uniq > result.txt

# answer3
# grep "serdar"  event_history.csv | grep -i "terminate" | grep -Eo "i-[a-zA-Z0-9]{17}" | sort | uniq | tee result.txt

# answer4
# cat event_history.csv | grep -i "serdar" | grep -i "terminate" | grep -Eo "i-\w{17}" | sort | uniq | tee result.txt

# answer5
# grep "serdar" event_history.csv | grep -i "terminate" | grep -Eo '\bi-0\w*' | sort | uniq | tee result.txt

# answer6
# awk -F, '/serdar/{print $1, $4, $10}' event_history.csv | grep -i "terminate*" | grep "i-.*" | cut -d ":" -f2 | tr -d '"}] ' | sort | uniq | tee result.txt

# answer7
# cat event_history.csv | grep -i "serdar" | grep -i "terminate" | grep -io "i-.\{17\}" | sort | uniq | tee result.txt
