#!/bin/bash
cat /home/dennis/scripts/bashinfo/tux > tuxx
pfetch >> tuxx

formatted= cat "tuxx" | awk -v row=8 '{A[(NR-1)%row]=A[(NR-1)%row]$0" ";next}END{for(i in A)print A[i]}' 

echo -e "${formatted}"
