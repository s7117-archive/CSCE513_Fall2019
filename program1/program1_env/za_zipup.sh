#!/bin/bash
################################################################################
# Author: Peyton Chandarana
# Date:   
# Use:    For use in CSCE 513
# Credit: Professor Duncan Buell - This script was inspired from scripts
#                                  that Duncan Buell has written.
################################################################################
# This script tars and then gzips the source files found in the source directory
# and places the resulting .tar.gz file in the submissions directory.
################################################################################
mkdir submission
cd submission
mkdir ./hw1_$USER
cp -r ../source/* ./hw1_$USER
tar -zcvf hw1_$USER.tar.gz ./hw1_$USER
rm -r ./hw1_$USER
