#! /bin/sh

# Make sure a single file is given at command line; provide usage $
if [ $# -lt 1 ] || [ $# -gt 1 ];then
echo "Error: Please provide a single FASTA file at the command line"
exit
fi

#initialize variable
reverse=""

#read in data
name=`grep ">" $1`
sequence=`grep -v ">" $1`

echo "Name: $name"

#removed sanity check
#calculate length of sequence
#len=${#sequence}
#echo "Length: $len"

#removed loop
#loop through sequence in reverse
#for (( i=$len; i>=0; i-- ))
#do
#    reverse="$reverse${sequence:$i:1}"
#done

#removed sanity check
#echo "$sequence$reverse"

#removed old code
#complement sequence
#rc=`echo $reverse | tr 'atcg' 'tagc'`

#removed sanity check
#echo "$rc"

#reverse and complement the contents of sequence variable
rc=`echo $sequence|rev | tr 'ATCGatcg' 'TAGCtagc'`
echo $name >rc.$1
echo $rc >>rc.$1
