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

# COMMAND to Run with Caches
# You must pass the --caches and --l2cache arguments to initialize the caches.
# If you don't then you will can't use caches.
#gem5_X86.opt ./config/se.py --caches --l2cache --l2_size=2MB -c quicksort

######################################
##### Cache command line options #####
######################################
#--caches              
#--l2cache             
#--num-dirs=NUM_DIRS   
#--num-l2caches=NUM_L2CACHES
#--num-l3caches=NUM_L3CACHES
#--l1d_size=L1D_SIZE   
#--l1i_size=L1I_SIZE   
#--l2_size=L2_SIZE     
#--l3_size=L3_SIZE     
#--l1d_assoc=L1D_ASSOC
#--l1i_assoc=L1I_ASSOC
#--l2_assoc=L2_ASSOC   
#--l3_assoc=L3_ASSOC
######################################

RED='\033[0;31m'
WHITE='\033[0m'
BOLD=$(tput bold)
NORMAL=$(tput sgr0)
# Must add options to run with different cache sizes.
cd testing
# Test Heapsort
echo -e "${RED}${BOLD}----- HEAPSORT_RUN -----${WHITE}${NORMAL}"
/usr/local/3rdparty/gem5/build/X86/gem5_X86.opt ./config/se.py --caches \
 --l2cache --l1i_size="64kB" --l2_size="128kB" -c ./heapsort
mv m5out m5out_heapsort
# Run Quicksort
echo -e "${RED}${BOLD}----- QUICKSORT_RUN -----${WHITE}${NORMAL}"
/usr/local/3rdparty/gem5/build/X86/gem5_X86.opt ./config/se.py --caches \
 --l2cache --l1i_size="64kB" --l2_size="128kB" -c ./quicksort
mv m5out m5out_quicksort

################################################################################
################################################################################
################################################################################

##### USING SIMPLE.PY #####
#cd testing
# Test Heapsort
#/usr/local/3rdparty/gem5/build/X86/gem5_X86.opt ./config/simple_heapsort.py
#mv m5out m5out_heapsort
# Run Quicksort
#/usr/local/3rdparty/gem5/build/X86/gem5_X86.opt ./config/simple_quicksort.py
#mv m5out m5out_quicksort

