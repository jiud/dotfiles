#!/bin/bash

#This script is for teleporting to midly annoying locations

function zap () 
{
    RED='\033[0;31m'
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    NC='\033[0m' # No Color

    CHOICE=0

    while [ 1 ]
    do
        if [ -z "$1" ] && [ $CHOICE == 0 ]
        then
            echo -e "* ${YELLOW}Zap${NC} to:"\
                "\n ${RED}1${NC} - uni-C-Analyser"\
                "\n ${RED}2${NC} - Μικροηλεκτρονική"\
                "\n ${RED}3${NC} - Ασφάλεια"\
                "\n* ${YELLOW}Choice${NC}: "
            read -n 1 CHOICE
        elif [ "$CHOICE" == 1 ] || [ "$1" == 1 ]
        then
            cd "$HOME/uniBackup/classes/Eksamino_6/Metaglwttistes/Ergasthrio/assignment_1/uni-C-Analyser"
            break
        elif [ "$CHOICE" == 2 ] || [ "$1" == 2 ]
        then
            cd "$HOME/uniBackup/classes/Eksamino_6/Mikroilektroniki/"
            break
        elif [ "$CHOICE" == 3 ] || [ "$1" == 3 ]
        then
            cd "$HOME/uniBackup/classes/Eksamino_6/Asfaleia/Ergasthrio/Assignments/"
            break
        else
            echo "\n Usage: zap {1-3} or zap"
            break
        fi
    done
    ranger
}
