% List of open inputs
nrun = X; % enter the number of runs here
jobfile = {'/Users/nvijaya/OneDrive - Deakin University/PROJECTS/TDS/CYB_groupcomp/data/flexi_2x2x2_demo_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(0, nrun);
for crun = 1:nrun
end
spm('defaults', 'FMRI');
spm_jobman('run', jobs, inputs{:});
