#!/bin/sh

# On EC2:
# sudo yum -y install bzip2-devel
#
# Still has a problem with -lxml2 but fastq-dump builds.
#

wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.3.2-4/sra_sdk-2.3.2-4.tar.gz
tar zxvf sra_sdk-2.3.2-4.tar.gz
cd sra_sdk-2.3.2-4
make static
make

# Now move 'fastq-dump' to the version-appropriate subdirectory of the emr
# bucket.  Give it a suffix of 32 or 64 depending on whether you compiled a
# 32- or 64-bit binary.
