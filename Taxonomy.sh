#/!/bin/bash
#this scripts takes the input file Fish_taxonomy.txt and outputs the last colum of the file, the species names column

perl -pe 's/(.*)\;\n/1Nothing\n/g' Fis_taxonomy.txt | grep ';' | grep -v 'Nothing'| grep -v ';;' | perl -pe 's/\;/\t/g' | awk '{print $10, $11}' 

