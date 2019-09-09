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
HW="hw2"
mkdir submission
cd submission
mkdir ./${HW}_$USER
cp -r ../source/* ./${HW}_$USER
tar -zcvf ${HW}_$USER.tar.gz ./${HW}_$USER
rm -r ./${HW}_$USER
