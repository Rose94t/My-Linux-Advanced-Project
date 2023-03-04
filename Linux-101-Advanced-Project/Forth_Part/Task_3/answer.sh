#!/bin/bash

# answer1
# grep -Eio "invalid user .+ [preauth]" auth.log | awk '{print $3}' | sort | uniq -c > invalid_user.sh
# grep -Eio "invalid user .+ [preauth]" auth.log | awk '{print $3}' | sort | uniq | wc -l > result.txt

# answer2
# grep -Eio "invalid user .+ \[" auth.log | awk '{print $3}' | sort | uniq -c > invalid_user.sh

# answer3
# cat auth.log | grep "Failed password for invalid user" | awk '{print $11}' | sort | uniq -c > invalid_user.sh
