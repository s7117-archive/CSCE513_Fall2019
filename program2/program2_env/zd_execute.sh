#!/bin/bash
################################################################################
# Author: Peyton Chandarana
# Date:   
# Use:    For use in CSCE 513
# Credit: Professor Duncan Buell - This script was inspired from scripts
#                                  that Duncan Buell has written.
################################################################################
# This script runs your executables compiled with the compile script through
# the gem5 simulator.
################################################################################
######################################
##### Program 2 #####
######################################

RED='\033[0;31m'
WHITE='\033[0m'
BOLD=$(tput bold)
NORMAL=$(tput sgr0)

##### USING SIMPLE.PY #####
cd testing
# Test Heapsort
echo -e "${RED}${BOLD}----- HEAPSORT_RUN -----${WHITE}${NORMAL}"
/usr/local/3rdparty/gem5/build/X86/gem5_X86.opt ./configs/simple_heapsort.py
mv m5out m5out_heapsort
# Run Quicksort
echo -e "${RED}${BOLD}----- QUICKSORT_RUN -----${WHITE}${NORMAL}"
/usr/local/3rdparty/gem5/build/X86/gem5_X86.opt ./configs/simple_quicksort.py
mv m5out m5out_quicksort

################################################################################
################################################################################
################################################################################
