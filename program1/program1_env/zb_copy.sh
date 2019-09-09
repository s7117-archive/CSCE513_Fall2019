#!/bin/bash
################################################################################
# Author: Peyton Chandarana
# Date:   
# Use:    For use in CSCE 513
# Credit: Professor Duncan Buell - This script was inspired from scripts
#                                  that Duncan Buell has written.
################################################################################
# This script unzips and untars your current submission in the submission
# directory and moves the source files to the testing directory.
################################################################################
mkdir testing
cd ./testing
rm -r *
tar -xvf ../submission/hw1_$USER.tar.gz
cp -r ./hw1_$USER/* .
rm -r ./hw1_$USER
