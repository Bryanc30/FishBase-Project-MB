#/!/bin/bash

. /u/local/Modules/default/init/modules.sh
module load R

echo "beginning the process"

perl -pe 's/(.*)\;\n/\1Nothing\n/g' $1 | grep ';' | grep -v 'Nothing' | perl -pe 's/;;/;Nothing;/g' | perl -pe 's/\;/\t/g' | awk '{ print $10, $11 }' > thing.txt

Rscript script.R

mkdir Images

mv *.jpg Images

echo "Done!"

#end
