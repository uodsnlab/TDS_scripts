#!/bin/bash
#--------------------------------------------------------------
# Inputs:
#	* STUDY = study name
#	* SUBJLIST = subject_list.txt
#	* SCRIPT = MATLAB script to create and execute batch job
#	* PROCESS = running locally, via qsub, or on the Mac Pro
#	* Edit output and error paths
#
# Outputs:
#	* Executes spm_job.sh for $SUB and $SCRIPT
#
# D.Cos 2017.3.7
#--------------------------------------------------------------


# Set your study
STUDY=/projects/dsnlab/tds/TDS_scripts

# Set subject list
#SUBJLIST=`cat subject_list_fx_alone.txt`
#SUBJLIST=`cat subject_list_fx_alone_redo.txt`
SUBJLIST=`cat subject_list_fx_alone_noGoodPmod.txt`

#Which SID should be replaced?
REPLACESID='101'

#SPM Path
SPM_PATH=/projects/dsnlab/SPM12

# Set MATLAB script path
SCRIPT=${STUDY}/fMRI/fx/models/ylg/contrasts/fx_ylg_alone_con_base_9_noGoodPmod.m

# Tag the results files
RESULTS_INFIX=fx_ylg_alone_contrasts

# Set output dir
OUTPUTDIR=${STUDY}/fMRI/fx/shell/schedule_spm_jobs/ylg/tds2/output/

# Set processor
# use "qsub" for HPC
# use "local" for local machine
# use "parlocal" for local parallel processing

PROCESS=slurm

# Max jobs only matters for par local
MAXJOBS=8

#Only matters for slurm
cpuspertask=1
mempercpu=5G

# Create and execute batch job
if [ "${PROCESS}" == "slurm" ]; then 
	for SUB in $SUBJLIST
	do
	 echo "submitting via qsub"
	 sbatch --export=REPLACESID=$REPLACESID,SCRIPT=$SCRIPT,SUB=$SUB,SPM_PATH=$SPM_PATH,PROCESS=$PROCESS  \
		 --job-name=${RESULTS_INFIX} \
		 -o "${OUTPUTDIR}"/"${SUB}"_"${RESULTS_INFIX}".log \
		 --cpus-per-task=${cpuspertask} \
		 --mem-per-cpu=${mempercpu} \
		 spm_job.sh
	 sleep .25
	done

elif [ "${PROCESS}" == "local" ]; then 
	for SUB in $SUBJLIST
	do
	 echo "submitting locally"
	 bash spm_job.sh ${REPLACESID} ${SCRIPT} ${SUB} > "${OUTPUTDIR}"/"${SUBJ}"_"${RESULTS_INFIX}"_output.txt 2> /"${OUTPUTDIR}"/"${SUBJ}"_"${RESULTS_INFIX}"_error.txt
	done

elif [ "${PROCESS}" == "parlocal" ]; then 
	parallel --verbose --results "${OUTPUTDIR}"/{}_"${RESULTS_INFIX}"_output -j${MAXJOBS} bash spm_job.sh ${REPLACESID} ${SCRIPT} :::: subject_list.txt
fi
