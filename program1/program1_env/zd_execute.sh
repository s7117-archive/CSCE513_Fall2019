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
# Program 1
cd testing
mkdir out
# Run heapsort
./heapsort > ./out/heapsort.out
# Run quicksort
./quicksort > ./out/quicksort.out
################################################################################
# Program 2
#cd testing
# Test Heapsort
#/usr/local/3rdparty/gem5/build/X86/gem5_X86.opt ./config/simple_heapsort.py
#mv m5out m5out_heapsort
# Run Quicksort
#/usr/local/3rdparty/gem5/build/X86/gem5_X86.opt ./config/simple_quicksort.py
#mv m5out m5out_quicksort
################################################################################
# OLD SE.PY CONFIGURATION
# Must add options to run with different cache sizes.
# Test Heapsort
#/usr/local/3rdparty/gem5/build/X86/gem5_X86.opt ./config.py -c ./heapsort
#mv m5out m5out_heapsort
# Run Quicksort
#/usr/local/3rdparty/gem5/build/X86/gem5_X86.opt ./config.py -c ./quicksort
#mv m5out m5out_quicksort
