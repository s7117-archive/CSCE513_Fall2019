# Environment README:

***READ BEFORE USE***

***ALWAYS code in the source directory!!!***

Please understand the scripts before using. If you don't you may lose some data!

---

### za_zipup.sh
- This script packs everything in the source directory up into a tarred and zipped file for submission and places it in the submission directory.

### zb_copy.sh
- This script unzips and untars the hw1.tar.gz submission file in the submission directory and copies is to the testing directory.

### zc_compile.sh
- This script compiles the code using the Makefile in the testing directory.

### zd_execute.sh
- This script runs your executables in the testing directory through the gem5 simulator and preserves the output directories. 

### ze_clean_env.sh
- Removes the submision and testing directories.
