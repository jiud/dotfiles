#!/bin/bash
cat /home/dennis/scripts/bashinfo/tux > /home/dennis/scripts/bashinfo/tuxx
pfetch >> /home/dennis/scripts/bashinfo/tuxx

formatted= cat "/home/dennis/scripts/bashinfo/tuxx" | awk -v row=8 '{A[(NR-1)%row]=A[(NR-1)%row]$0" ";next}END{for(i in A)print A[i]}' 

echo -e "${formatted}"
