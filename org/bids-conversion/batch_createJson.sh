#!/bin/bash
#
# This batch file calls on your subject
# list (named subject_list.txt) in the 
# script directory. And runs the specified job 
# file for each subject. It saves the ouput
# and error files in their specified
# directories.
#
# Set your study
STUDY=/projects/dsnlab/shared/tds

# Set subject list
SUBJLIST=`cat subject_list.txt`
 
# Set output directory
OUTPUTDIR=TDS_scripts/org/bids-conversion/output

# Set job script
JOB=TDS_scripts/org/bids-conversion/createJson.sh

for SUBJ in ${SUBJLIST[@]}

do

SUBID=`echo $SUBJ|awk '{print $1}' FS=","`
SESSID=`echo $SUBJ|awk '{print $2}' FS=","`

sbatch --export subid=${SUBID},sessid=${SESSID} --job-name createJson_"${SUBJ}" --mem-per-cpu=2G --cpus-per-task=1 --partition=short --time 00:00:10 -o "${STUDY}"/"${OUTPUTDIR}"/"${SUBID}"_"${SESSID}"_createJson_output.txt -e "${STUDY}"/"${OUTPUTDIR}"/"${SUBID}"_"${SESSID}"_createJson_error.txt "${STUDY}"/"${JOB}"

done
