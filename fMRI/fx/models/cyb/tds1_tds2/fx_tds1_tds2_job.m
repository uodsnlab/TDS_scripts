%-----------------------------------------------------------------------
% Job saved on 13-May-2017 13:21:51 by cfg_util (rev $Rev: 6460 $)
% spm SPM - SPM12 (6906)
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tds1_tds2/109/cyb1'};
matlabbatch{1}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^swrucyb1.*nii';
matlabbatch{1}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tds1_tds2/109/cyb2'};
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^swrucyb2.*nii';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{3}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.parent = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/cyb/tds1_tds2'};
matlabbatch{3}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.name = '109';
matlabbatch{4}.spm.stats.fmri_spec.dir = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/cyb/tds1_tds2/109'};
matlabbatch{4}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{4}.spm.stats.fmri_spec.timing.RT = 2;
matlabbatch{4}.spm.stats.fmri_spec.timing.fmri_t = 72;
matlabbatch{4}.spm.stats.fmri_spec.timing.fmri_t0 = 36;
matlabbatch{4}.spm.stats.fmri_spec.sess(1).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^swrucyb1.*nii)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{4}.spm.stats.fmri_spec.sess(1).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{4}.spm.stats.fmri_spec.sess(1).multi = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/multicond/cyb/tds1_tds2/109_1_NOD.mat'};
matlabbatch{4}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{4}.spm.stats.fmri_spec.sess(1).multi_reg = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/motion/auto-motion-output/tds1_tds2/rp_auto_txt/rp_109_cyb1.txt'};
matlabbatch{4}.spm.stats.fmri_spec.sess(1).hpf = 128;
matlabbatch{4}.spm.stats.fmri_spec.sess(2).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^swrucyb2.*nii)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{4}.spm.stats.fmri_spec.sess(2).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{4}.spm.stats.fmri_spec.sess(2).multi = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/multicond/cyb/tds1_tds2/109_2_NOD.mat'};
matlabbatch{4}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{4}.spm.stats.fmri_spec.sess(2).multi_reg = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/motion/auto-motion-output/tds1_tds2/rp_auto_txt/rp_109_cyb2.txt'};
matlabbatch{4}.spm.stats.fmri_spec.sess(2).hpf = 128;
matlabbatch{4}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{4}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{4}.spm.stats.fmri_spec.volt = 1;
matlabbatch{4}.spm.stats.fmri_spec.global = 'None';
matlabbatch{4}.spm.stats.fmri_spec.mthresh = -Inf;
matlabbatch{4}.spm.stats.fmri_spec.mask = {'/projects/dsnlab/shared/tds/fMRI/analysis/masks/tds1_tds2/tds1_tds2_gw_smoothed_group_average_optthr.nii,1'};
matlabbatch{4}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{5}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{5}.spm.stats.fmri_est.write_residuals = 1;
matlabbatch{5}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{6}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{6}.spm.stats.con.consess{1}.tcon.name = 'pc>rest';
matlabbatch{6}.spm.stats.con.consess{1}.tcon.weights = [0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{2}.tcon.name = 'pc>wait';
matlabbatch{6}.spm.stats.con.consess{2}.tcon.weights = [-0.5 1 0 0 0 0 0 0 0 0 -0.5 1 0 0 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{2}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{3}.tcon.name = 'ct_2C_inc>rest';
matlabbatch{6}.spm.stats.con.consess{3}.tcon.weights = [0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{3}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{4}.tcon.name = 'ct_2C_inc>wait';
matlabbatch{6}.spm.stats.con.consess{4}.tcon.weights = [-0.5 0 1 0 0 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{4}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{5}.tcon.name = 'ct_2P_inc>rest';
matlabbatch{6}.spm.stats.con.consess{5}.tcon.weights = [0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{5}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{6}.tcon.name = 'ct_2P_inc>wait';
matlabbatch{6}.spm.stats.con.consess{6}.tcon.weights = [-0.5 0 0 1 0 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{6}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{7}.tcon.name = 'ct_2P_p_inc>rest';
matlabbatch{6}.spm.stats.con.consess{7}.tcon.weights = [0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{7}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{8}.tcon.name = 'ct_2P_p_inc>wait';
matlabbatch{6}.spm.stats.con.consess{8}.tcon.weights = [-0.5 0 0 0 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{8}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{9}.tcon.name = 'ct_2C_exc>rest';
matlabbatch{6}.spm.stats.con.consess{9}.tcon.weights = [0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{9}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{10}.tcon.name = 'ct_2C_exc>wait';
matlabbatch{6}.spm.stats.con.consess{10}.tcon.weights = [-0.5 0 0 0 0 0 0 0 0 0 -0.5 0 1 0 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{10}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{11}.tcon.name = 'ct_2C_p_exc>rest';
matlabbatch{6}.spm.stats.con.consess{11}.tcon.weights = [0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{11}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{12}.tcon.name = 'ct_2C_p_exc>wait';
matlabbatch{6}.spm.stats.con.consess{12}.tcon.weights = [-0.5 0 0 0 0 0 0 0 0 0 -0.5 0 0 1 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{12}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{13}.tcon.name = 'ct_2P_exc>rest';
matlabbatch{6}.spm.stats.con.consess{13}.tcon.weights = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{13}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{14}.tcon.name = 'ct_2P_exc>wait';
matlabbatch{6}.spm.stats.con.consess{14}.tcon.weights = [-0.5 0 0 0 0 0 0 0 0 0 -0.5 0 0 0 1 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{14}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{15}.tcon.name = 'ct_2C_p_inc>ct_2P_p_exc';
matlabbatch{6}.spm.stats.con.consess{15}.tcon.weights = [0 0 0 0 1 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{15}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.consess{16}.tcon.name = 'ct_2C_p_exc>ct_2P_p_inc';
matlabbatch{6}.spm.stats.con.consess{16}.tcon.weights = [0 0 0 0 -1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0];
matlabbatch{6}.spm.stats.con.consess{16}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.delete = 1;
