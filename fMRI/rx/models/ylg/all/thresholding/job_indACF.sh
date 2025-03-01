#!/bin/bash

# load afni
module load prl
module load afni

fxDir=/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/
mask=/projects/dsnlab/shared/tds/fMRI/analysis/masks/tds2/tds2_gw_smoothed_group_average_optthr_2mm.nii

# Estimate acf parameters for each subject and save as text file
# ------------------------------------------------------------------------------------------
cd ${fxDir}/${SUBID}

touch ${SUBID}_acf.txt

for res in Res_*; do

echo $res `3dFWHMx -acf -mask $mask $res` >> ${SUBID}_acf.txt

done
