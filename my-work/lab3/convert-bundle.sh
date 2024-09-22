#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xzf lab3-bundle.tar.gz

#tr can remove spaces
cat lab3_data.tsv | tr -s '\n' > mynewfile.tsv

#use `tr` - translate
tr '\t' ',' < mynewfile.tsv > file.csv

#word count
WC=$(($(wc -l < file.csv) - 1)) 
echo $WC

#create new tarball 
tar -czf converted-archive.tar.gz file.csv 

