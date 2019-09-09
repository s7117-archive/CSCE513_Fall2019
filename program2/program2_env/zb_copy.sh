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
HW="hw2"
mkdir testing
cd ./testing
rm -r *
tar -xvf ../submission/${HW}_$USER.tar.gz
cp -r ./${HW}_$USER/* .
rm -r ./${HW}_$USER
