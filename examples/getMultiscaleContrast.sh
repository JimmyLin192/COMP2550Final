###################################################
## FILENAME:    testMultiscaleContrast.sh
## AUTHOR:      Jimmy Lin (u5223173) 
## DATE:        2013-05-30
## DESCRIPTION: 
##     bash script to run the feature extraction
##
###################################################
## Edited by MacVim
## Documentation autogenerated by snippet
###################################################

## input of this bash script is the index of image package

## three modes: 
##    msc - multiscale contrast
##    csh - center surround histogram
##    csd - color spatial distribution

mode="csd"
for x in $*
do  
    mkdir results/xxxxx/
    mkdir results/xxxxx/"$x"/
    ./../../bin/testMultiscaleContrast -x -verbose $mode dataset/images/B/$x dataset/labels/B/"$x"_data.txt results/xxxxx/"$x"/
done
