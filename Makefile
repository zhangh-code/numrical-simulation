# Multithreaded + multi-processing makefile for:
#    Linux login 2.6.32-642.el6.x86_64 #1 SMP Wed Apr 13 00:51:26 EDT 2016 x86_64 x86_64 x86_64 GNU/Linux
# This makefile was generated automatically on
#    Wed May 31 21:22:49 CST 2017
# by the command:
#    ../../../tools/genmake2 -mpi -mods=../code/ -of=../../../tools/build_options/linux_amd64_ifort_qian
# executed by:
#    liuyi@login:/public/home/liuyi/MITgcm_c65y/verification/circulation/code
#
# OPTFILE="../../../tools/build_options/linux_amd64_ifort_qian"
#
# BUILDDIR     : Directory where object files are written
# SOURCEDIRS   : Directories containing the source (.F) files
# INCLUDEDIRS  : Directories containing the header-source (.h) files
# EXEDIR       : Directory where executable that is generated is written
# EXECUTABLE   : Full path of executable binary
#
# CPP          : C-preprocessor command
# INCLUDES     : Directories searched for header files
# DEFINES      : Macro definitions for CPP
# MAKEDEPEND   : Dependency generator
# FC           : Fortran compiler command
# FFLAGS       : Configuration/debugging options for FC
# FOPTIM       : Optimization options for FC
# LINK         : Command for link editor program
# LIBS         : Library flags /or/ additional optimization/debugging flags

ROOTDIR     = ../../..
BUILDDIR    = .
SOURCEDIRS  =  ../code/ ../../../pkg/cal ../../../pkg/debug ../../../pkg/diagnostics ../../../pkg/exf ../../../pkg/generic_advdiff ../../../pkg/gmredi ../../../pkg/kpp ../../../pkg/mdsio ../../../pkg/mom_common ../../../pkg/mom_fluxform ../../../pkg/mom_vecinv ../../../pkg/monitor ../../../pkg/obcs ../../../pkg/rw ../../../eesupp/src ../../../model/src
INCLUDEDIRS = /usr/include ../code/ ../../../pkg/cal ../../../pkg/debug ../../../pkg/diagnostics ../../../pkg/exf ../../../pkg/generic_advdiff ../../../pkg/gmredi ../../../pkg/kpp ../../../pkg/mdsio ../../../pkg/mom_common ../../../pkg/mom_fluxform ../../../pkg/mom_vecinv ../../../pkg/monitor ../../../pkg/obcs ../../../pkg/rw ../../../eesupp/inc ../../../model/inc
EXEDIR      = .
EXECUTABLE  = $(EXEDIR)/mitgcmuv
TOOLSDIR    = ../../../tools
OADTOOLS    = 

#eh3  new defines for the adjoint work
AUTODIFF    = ../../../pkg/autodiff
EXE_AD      = mitgcmuv_ad
EXE_FTL     = mitgcmuv_ftl
EXE_SVD     = mitgcmuv_svd

ENABLED_PACKAGES =  -DALLOW_CAL -DALLOW_DEBUG -DALLOW_DIAGNOSTICS -DALLOW_EXF -DALLOW_GENERIC_ADVDIFF -DALLOW_GMREDI -DALLOW_KPP -DALLOW_MDSIO -DALLOW_MOM_COMMON -DALLOW_MOM_FLUXFORM -DALLOW_MOM_VECINV -DALLOW_MONITOR -DALLOW_OBCS -DALLOW_RW
DISABLED_PACKAGES =  -UALLOW_ADMTLM -UALLOW_AIM_V23 -UALLOW_ATM2D -UALLOW_ATM_COMMON -UALLOW_ATM_COMPON_INTERF -UALLOW_ATM_OCN_COUPLER -UALLOW_ATM_PHYS -UALLOW_AUTODIFF -UALLOW_BBL -UALLOW_BLING -UALLOW_BULK_FORCE -UALLOW_CD_CODE -UALLOW_CFC -UALLOW_CHEAPAML -UALLOW_CHRONOS -UALLOW_COMPON_COMMUNIC -UALLOW_COST -UALLOW_CTRL -UALLOW_DIC -UALLOW_DOWN_SLOPE -UALLOW_EBM -UALLOW_ECCO -UALLOW_EMBED_FILES -UALLOW_EXCH2 -UALLOW_FIZHI -UALLOW_FLT -UALLOW_FRAZIL -UALLOW_GCHEM -UALLOW_GGL90 -UALLOW_GRDCHK -UALLOW_GRIDALT -UALLOW_ICEFRONT -UALLOW_KL10 -UALLOW_LAND -UALLOW_LAYERS -UALLOW_LONGSTEP -UALLOW_MATRIX -UALLOW_MNC -UALLOW_MY82 -UALLOW_MYPACKAGE -UALLOW_OCN_COMPON_INTERF -UALLOW_OFFLINE -UALLOW_OPENAD -UALLOW_OPPS -UALLOW_PP81 -UALLOW_PROFILES -UALLOW_PTRACERS -UALLOW_RBCS -UALLOW_REGRID -UALLOW_RUNCLOCK -UALLOW_SALT_PLUME -UALLOW_SBO -UALLOW_SEAICE -UALLOW_SHAP_FILT -UALLOW_SHELFICE -UALLOW_SHOWFLOPS -UALLOW_SMOOTH -UALLOW_SPHERE -UALLOW_STREAMICE -UALLOW_THSICE -UALLOW_TIMEAVE -UALLOW_ZONAL_FILT

# These files are created by Makefile
SPECIAL_FILES = PACKAGES_CONFIG.h AD_CONFIG.h FC_NAMEMANGLE.h BUILD_INFO.h
EMBEDDED_FILES = 
# Unix ln (link)
LN = ln -s
# Dependency generator
MAKEDEPEND = $(TOOLSDIR)/xmakedepend
# Special preprocessor (KAP on DECs, FPP on Crays)
KPP = 
# Fortran compiler
FC = mpif90
# Fortran compiler
F90C = 
# C compiler
CC = mpicc
# Link editor
LINK = mpif90 

# Defines for CPP
DEFINES = -DALLOW_USE_MPI -DWORDLENGTH=4 -DALLOW_USE_MPI -DHAVE_SYSTEM -DHAVE_FDATE -DHAVE_ETIME_FCT -DHAVE_CLOC -DHAVE_SETRLSTK -DHAVE_SIGREG -DHAVE_STAT -DHAVE_NETCDF -DHAVE_FLUSH 
# Includes for CPP
INCLUDES = -I/public/software/mpi/mvapich2/2.2b/intel/include -I/public/software/mathlib/lapack/3.4.2/intel/include -I/public/software/mathlib/netcdf/4.4.1.1/intel/include -I/usr/include
# default CPP includes for makedepend
CPPINCLUDES =  -I/public/software/compiler/intel/composer_xe_2015.2.164/mkl/include -I. -I/usr/local/include -I/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include -I/usr/include
# Flags for KPP
KFLAGS1 = 
KFLAGS2 = 
# Optim./debug for FC
FFLAGS = -r8 -i4 -WB -convert big_endian -assume byterecl -mcmodel=medium -shared-intel -g
FOPTIM = -O3 -xssse3 
# Optim./debug for FC
F90FLAGS = -r8 -i4 -WB -convert big_endian -assume byterecl -mcmodel=medium -shared-intel -g
F90OPTIM = -O3 -xssse3
F90FIXEDFORMAT = 
# Flags for CC
CFLAGS = -03 -xssse3 -ip
# Files that should not be optimized
NOOPTFILES = 
NOOPTFLAGS = 
# Flags and libraries needed for linking
LIBS = -L/public/software/mpi/mvapich2/2.2b/intel/lib -L/public/software/mathlib/lapack/3.4.2/intel/lib -L/public/software/mathlib/netcdf/4.4.1.1/intel/lib -L/usr/lib64 -lnetcdff -lnetcdf
# Name of the makefile
MAKEFILE = Makefile
# Name of the make program
MAKE = make

F77_SRC_FILES =  \
 cal_addtime.F \
 cal_checkdate.F \
 cal_compdates.F \
 cal_convdate.F \
 cal_copydate.F \
 cal_daysformonth.F \
 cal_dayspermonth.F \
 cal_fulldate.F \
 cal_getdate.F \
 cal_getmonthsrec.F \
 cal_init_fixed.F \
 cal_intdays.F \
 cal_intmonths.F \
 cal_intyears.F \
 cal_isleap.F \
 cal_monthsforyear.F \
 cal_monthsperyear.F \
 cal_numints.F \
 cal_printdate.F \
 cal_printerror.F \
 cal_readparms.F \
 cal_set.F \
 cal_stepsforday.F \
 cal_stepsperday.F \
 cal_subdates.F \
 cal_summary.F \
 cal_time2dump.F \
 cal_timeinterval.F \
 cal_timepassed.F \
 cal_timestamp.F \
 cal_toseconds.F \
 cal_weekday.F \
 chksum_tiled.F \
 debug_call.F \
 debug_cs_corner_uv.F \
 debug_enter.F \
 debug_fld_stats_rl.F \
 debug_fld_stats_rs.F \
 debug_leave.F \
 debug_msg.F \
 debug_stats_rl.F \
 debug_stats_rs.F \
 fill_in_corners_rl.F \
 write_fullarray_rl.F \
 write_fullarray_rs.F \
 diag_calc_psivel.F \
 diag_cg2d.F \
 diagnostics_addtolist.F \
 diagnostics_calc_phivel.F \
 diagnostics_check.F \
 diagnostics_clear.F \
 diagnostics_fill.F \
 diagnostics_fill_field.F \
 diagnostics_fill_rs.F \
 diagnostics_fill_state.F \
 diagnostics_fract_fill.F \
 diagnostics_init_early.F \
 diagnostics_init_fixed.F \
 diagnostics_init_varia.F \
 diagnostics_interp_p2p.F \
 diagnostics_interp_vert.F \
 diagnostics_is_on.F \
 diagnostics_list_check.F \
 diagnostics_main_init.F \
 diagnostics_mnc_out.F \
 diagnostics_out.F \
 diagnostics_readparms.F \
 diagnostics_read_pickup.F \
 diagnostics_scale_fill.F \
 diagnostics_scale_fill_rs.F \
 diagnostics_set_calc.F \
 diagnostics_setdiag.F \
 diagnostics_set_levels.F \
 diagnostics_set_pointers.F \
 diagnostics_status_error.F \
 diagnostics_sum_levels.F \
 diagnostics_summary.F \
 diagnostics_switch_onoff.F \
 diagnostics_utils.F \
 diagnostics_write.F \
 diagnostics_write_pickup.F \
 diagstats_ascii_out.F \
 diagstats_calc.F \
 diagstats_clear.F \
 diagstats_close_io.F \
 diagstats_fill.F \
 diagstats_global.F \
 diagstats_ini_io.F \
 diagstats_local.F \
 diagstats_mnc_out.F \
 diagstats_others_calc.F \
 diagstats_output.F \
 diagstats_setdiag.F \
 diagstats_set_pointers.F \
 diagstats_set_regions.F \
 diag_vegtile_fill.F \
 exf_ad_dump.F \
 exf_adjoint_snapshots_ad.F \
 exf_adjoint_snapshots.F \
 exf_adjoint_snapshots__g.F \
 exf_bulkformulae.F \
 exf_check.F \
 exf_check_range.F \
 exf_diagnostics_fill.F \
 exf_diagnostics_init.F \
 exf_filter_rl.F \
 exf_getclim.F \
 exf_getffieldrec.F \
 exf_getffields.F \
 exf_getfield_start.F \
 exf_getforcing.F \
 exf_getsurfacefluxes.F \
 exf_getyearlyfieldname.F \
 exf_init.F \
 exf_init_fixed.F \
 exf_interp.F \
 exf_interpolate.F \
 exf_interp_read.F \
 exf_interp_uv.F \
 exf_mapfields.F \
 exf_monitor_ad.F \
 exf_monitor.F \
 exf_radiation.F \
 exf_readparms.F \
 exf_set_gen.F \
 exf_set_obcs.F \
 exf_set_uv.F \
 exf_summary.F \
 exf_swapffields.F \
 exf_wind.F \
 exf_zenithangle.F \
 exf_zenithangle_table.F \
 gad_advection.F \
 gad_advscheme.F \
 gad_biharm_r.F \
 gad_biharm_x.F \
 gad_biharm_y.F \
 gad_c2_adv_r.F \
 gad_c2_adv_x.F \
 gad_c2_adv_y.F \
 gad_c2_impl_r.F \
 gad_c4_adv_r.F \
 gad_c4_adv_x.F \
 gad_c4_adv_y.F \
 gad_calc_rhs.F \
 gad_check.F \
 gad_del2.F \
 gad_diagnostics_init.F \
 gad_diagnostics_state.F \
 gad_diff_r.F \
 gad_diff_x.F \
 gad_diff_y.F \
 gad_dst2u1_adv_r.F \
 gad_dst2u1_adv_x.F \
 gad_dst2u1_adv_y.F \
 gad_dst2u1_impl_r.F \
 gad_dst3_adv_r.F \
 gad_dst3_adv_x.F \
 gad_dst3_adv_y.F \
 gad_dst3fl_adv_r.F \
 gad_dst3fl_adv_x.F \
 gad_dst3fl_adv_y.F \
 gad_dst3fl_impl_r.F \
 gad_exch_som.F \
 gad_fluxlimit_adv_r.F \
 gad_fluxlimit_adv_x.F \
 gad_fluxlimit_adv_y.F \
 gad_fluxlimit_impl_r.F \
 gad_grad_x.F \
 gad_grad_y.F \
 gad_implicit_r.F \
 gad_init_fixed.F \
 gad_init_varia.F \
 gad_os7mp_adv_r.F \
 gad_os7mp_adv_x.F \
 gad_os7mp_adv_y.F \
 gad_osc_hat_r.F \
 gad_osc_hat_x.F \
 gad_osc_hat_y.F \
 gad_osc_mul_r.F \
 gad_osc_mul_x.F \
 gad_osc_mul_y.F \
 gad_plm_fun.F \
 gad_ppm_adv_r.F \
 gad_ppm_adv_x.F \
 gad_ppm_adv_y.F \
 gad_ppm_flx_r.F \
 gad_ppm_flx_x.F \
 gad_ppm_flx_y.F \
 gad_ppm_fun.F \
 gad_ppm_hat_r.F \
 gad_ppm_hat_x.F \
 gad_ppm_hat_y.F \
 gad_ppm_p3e_r.F \
 gad_ppm_p3e_x.F \
 gad_ppm_p3e_y.F \
 gad_pqm_adv_r.F \
 gad_pqm_adv_x.F \
 gad_pqm_adv_y.F \
 gad_pqm_flx_r.F \
 gad_pqm_flx_x.F \
 gad_pqm_flx_y.F \
 gad_pqm_fun.F \
 gad_pqm_hat_r.F \
 gad_pqm_hat_x.F \
 gad_pqm_hat_y.F \
 gad_pqm_p5e_r.F \
 gad_pqm_p5e_x.F \
 gad_pqm_p5e_y.F \
 gad_read_pickup.F \
 gad_som_advect.F \
 gad_som_adv_r.F \
 gad_som_adv_x.F \
 gad_som_adv_y.F \
 gad_som_exchanges.F \
 gad_som_fill_cs_corner.F \
 gad_som_lim_r.F \
 gad_som_prep_cs_corner.F \
 gad_u3_adv_r.F \
 gad_u3_adv_x.F \
 gad_u3_adv_y.F \
 gad_u3c4_impl_r.F \
 gad_write_pickup.F \
 salt_fill.F \
 gmredi_calc_diff.F \
 gmredi_calc_eigs.F \
 gmredi_calc_psi_b.F \
 gmredi_calc_psi_bvp.F \
 gmredi_calc_tensor.F \
 gmredi_calc_urms.F \
 gmredi_check.F \
 gmredi_diagnostics_fill.F \
 gmredi_diagnostics_impl.F \
 gmredi_diagnostics_init.F \
 gmredi_do_exch.F \
 gmredi_init_fixed.F \
 gmredi_init_varia.F \
 gmredi_k3d.F \
 gmredi_mnc_init.F \
 gmredi_output.F \
 gmredi_readparms.F \
 gmredi_read_pickup.F \
 gmredi_residual_flow.F \
 gmredi_rtransport.F \
 gmredi_slope_limit.F \
 gmredi_slope_psi.F \
 gmredi_write_pickup.F \
 gmredi_xtransport.F \
 gmredi_ytransport.F \
 submeso_calc_psi.F \
 kpp_calc_diff_ptr.F \
 kpp_calc_diff_s.F \
 kpp_calc_diff_t.F \
 kpp_calc.F \
 kpp_calc_visc.F \
 kpp_check.F \
 kpp_diagnostics_init.F \
 kpp_do_exch.F \
 kpp_forcing_surf.F \
 kpp_init_fixed.F \
 kpp_init_varia.F \
 kpp_output.F \
 kpp_readparms.F \
 kpp_routines.F \
 kpp_transport_ptr.F \
 kpp_transport_s.F \
 kpp_transport_t.F \
 mdsio_buffertorl.F \
 mdsio_buffertors.F \
 mdsio_check4file.F \
 mdsio_facef_read.F \
 mdsio_gl.F \
 mdsio_gl_slice.F \
 mdsio_pass_r4torl.F \
 mdsio_pass_r4tors.F \
 mdsio_pass_r8torl.F \
 mdsio_pass_r8tors.F \
 mdsio_rd_rec_rl.F \
 mdsio_rd_rec_rs.F \
 mdsio_read_field.F \
 mdsio_read_meta.F \
 mdsio_read_section.F \
 mdsio_read_tape.F \
 mdsio_readvec_loc.F \
 mdsio_read_whalos.F \
 mdsio_rw_field.F \
 mdsio_rw_slice.F \
 mdsio_seg4torl.F \
 mdsio_seg4tors.F \
 mdsio_seg8torl.F \
 mdsio_seg8tors.F \
 mdsio_segxtorx_2d.F \
 mdsio_write_field.F \
 mdsio_writelocal.F \
 mdsio_write_meta.F \
 mdsio_write_section.F \
 mdsio_write_tape.F \
 mdsio_writevec_loc.F \
 mdsio_write_whalos.F \
 mdsio_wr_metafiles.F \
 mdsio_wr_rec_rl.F \
 mdsio_wr_rec_rs.F \
 mom_calc_3d_strain.F \
 mom_calc_absvort3.F \
 mom_calc_hdiv.F \
 mom_calc_hfacz.F \
 mom_calc_ke.F \
 mom_calc_relvort3.F \
 mom_calc_smag_3d.F \
 mom_calc_strain.F \
 mom_calc_tension.F \
 mom_calc_visc.F \
 mom_diagnostics_init.F \
 mom_hdissip.F \
 mom_init_fixed.F \
 mom_quasihydrostatic.F \
 mom_u_bottomdrag.F \
 mom_u_coriolis_nh.F \
 mom_u_implicit_r.F \
 mom_u_metric_nh.F \
 mom_u_rviscflux.F \
 mom_u_sidedrag.F \
 mom_uv_smag_3d.F \
 mom_v_bottomdrag.F \
 mom_v_coriolis_nh.F \
 mom_v_implicit_r.F \
 mom_v_metric_nh.F \
 mom_v_rviscflux.F \
 mom_v_sidedrag.F \
 mom_w_coriolis_nh.F \
 mom_w_metric_nh.F \
 mom_w_sidedrag.F \
 mom_w_smag_3d.F \
 mom_calc_rtrans.F \
 mom_fluxform.F \
 mom_u_adv_uu.F \
 mom_u_adv_vu.F \
 mom_u_adv_wu.F \
 mom_u_coriolis.F \
 mom_u_del2u.F \
 mom_u_metric_cylinder.F \
 mom_u_metric_sphere.F \
 mom_uv_boundary.F \
 mom_u_xviscflux.F \
 mom_u_yviscflux.F \
 mom_v_adv_uv.F \
 mom_v_adv_vv.F \
 mom_v_adv_wv.F \
 mom_v_coriolis.F \
 mom_v_del2v.F \
 mom_v_metric_cylinder.F \
 mom_v_metric_sphere.F \
 mom_v_xviscflux.F \
 mom_v_yviscflux.F \
 mom_vecinv.F \
 mom_vi_coriolis.F \
 mom_vi_del2uv.F \
 mom_vi_hdissip.F \
 mom_vi_u_coriolis_c4.F \
 mom_vi_u_coriolis.F \
 mom_vi_u_grad_ke.F \
 mom_vi_u_vertshear.F \
 mom_vi_v_coriolis_c4.F \
 mom_vi_v_coriolis.F \
 mom_vi_v_grad_ke.F \
 mom_vi_v_vertshear.F \
 mon_advcfl.F \
 mon_advcflw2.F \
 mon_advcflw.F \
 mon_calc_advcfl.F \
 mon_calc_stats_rl.F \
 mon_calc_stats_rs.F \
 mon_init.F \
 monitor_ad.F \
 monitor.F \
 monitor_g.F \
 mon_ke.F \
 mon_out.F \
 mon_printstats_rl.F \
 mon_printstats_rs.F \
 mon_set_iounit.F \
 mon_set_pref.F \
 mon_solution.F \
 mon_stats_latbnd_rl.F \
 mon_stats_rl.F \
 mon_stats_rs.F \
 mon_surfcor.F \
 mon_vort3.F \
 mon_writestats_rl.F \
 mon_writestats_rs.F \
 obcs_add_tides.F \
 obcs_adjust_uvice.F \
 obcs_apply_eta.F \
 obcs_apply_ptracer.F \
 obcs_apply_r_star.F \
 obcs_apply_seaice.F \
 obcs_apply_surf_dr.F \
 obcs_apply_ts.F \
 obcs_apply_uv.F \
 obcs_apply_uvice.F \
 obcs_apply_w.F \
 obcs_balance_flow.F \
 obcs_calc.F \
 obcs_calc_stevens.F \
 obcs_check_depths.F \
 obcs_check.F \
 obcs_copy_tracer.F \
 obcs_copy_uv_n.F \
 obcs_diag_balance.F \
 obcs_exchanges.F \
 obcs_exf_load.F \
 obcs_fields_load.F \
 obcs_init_fixed.F \
 obcs_init_variables.F \
 obcs_monitor.F \
 obcs_mon_stats.F \
 obcs_output.F \
 obcs_prescribe_read.F \
 obcs_readparms.F \
 obcs_read_pickup.F \
 obcs_save_uv_n.F \
 obcs_seaice_sponge.F \
 obcs_set_connect.F \
 obcs_sponge.F \
 obcs_u1_adv_tracer.F \
 obcs_write_pickup.F \
 orlanski_east.F \
 orlanski_init.F \
 orlanski_north.F \
 orlanski_south.F \
 orlanski_west.F \
 get_write_global_fld.F \
 read_fld_xy_rl.F \
 read_fld_xy_rs.F \
 read_fld_xyz_rl.F \
 read_fld_xyz_rs.F \
 read_glvec_rl.F \
 read_glvec_rs.F \
 read_mflds.F \
 read_rec.F \
 set_write_global_fld.F \
 write_fld_3d_rl.F \
 write_fld_3d_rs.F \
 write_fld_s3d_rl.F \
 write_fld_s3d_rs.F \
 write_fld_xy_rl.F \
 write_fld_xy_rs.F \
 write_fld_xyz_rl.F \
 write_fld_xyz_rs.F \
 write_glvec_rl.F \
 write_glvec_rs.F \
 write_local_rl.F \
 write_local_rs.F \
 write_rec.F \
 all_proc_die.F \
 bar2.F \
 bar_check.F \
 barrier.F \
 check_threads.F \
 comm_stats.F \
 cumulsum_z_tile.F \
 different_multiple.F \
 diff_phase_multiple.F \
 eeboot.F \
 eeboot_minimal.F \
 eedata_example.F \
 eedie.F \
 eeintro_msg.F \
 eeset_parms.F \
 eewrite_eeenv.F \
 exch0_r4.F \
 exch0_r8.F \
 exch0_rl.F \
 exch0_rs.F \
 exch1_bg_r4_cube.F \
 exch1_bg_r8_cube.F \
 exch1_bg_rl_cube.F \
 exch1_bg_rs_cube.F \
 exch1_r4_cube.F \
 exch1_r4.F \
 exch1_r8_cube.F \
 exch1_r8.F \
 exch1_rl_ad.F \
 exch1_rl_cube_ad.F \
 exch1_rl_cube.F \
 exch1_rl.F \
 exch1_rs_ad.F \
 exch1_rs_cube_ad.F \
 exch1_rs_cube.F \
 exch1_rs.F \
 exch1_uv_r4_cube.F \
 exch1_uv_r8_cube.F \
 exch1_uv_rl_cube.F \
 exch1_uv_rs_cube.F \
 exch1_z_r4_cube.F \
 exch1_z_r8_cube.F \
 exch1_z_rl_cube.F \
 exch1_z_rs_cube.F \
 exch_3d_r4.F \
 exch_3d_r8.F \
 exch_3d_rl.F \
 exch_3d_rs.F \
 exch_cycle_ebl.F \
 exch_init.F \
 exch_r4_recv_get_x.F \
 exch_r4_recv_get_y.F \
 exch_r4_send_put_x.F \
 exch_r4_send_put_y.F \
 exch_r8_recv_get_x.F \
 exch_r8_recv_get_y.F \
 exch_r8_send_put_x.F \
 exch_r8_send_put_y.F \
 exch_rl_recv_get_x.F \
 exch_rl_recv_get_y.F \
 exch_rl_send_put_x.F \
 exch_rl_send_put_y.F \
 exch_rs_recv_get_x.F \
 exch_rs_recv_get_y.F \
 exch_rs_send_put_x.F \
 exch_rs_send_put_y.F \
 exch_s3d_r4.F \
 exch_s3d_r8.F \
 exch_s3d_rl.F \
 exch_s3d_rs.F \
 exch_sm_3d_r4.F \
 exch_sm_3d_r8.F \
 exch_sm_3d_rl.F \
 exch_sm_3d_rs.F \
 exch_uv_3d_r4.F \
 exch_uv_3d_r8.F \
 exch_uv_3d_rl.F \
 exch_uv_3d_rs.F \
 exch_uv_agrid_3d_r4.F \
 exch_uv_agrid_3d_r8.F \
 exch_uv_agrid_3d_rl.F \
 exch_uv_agrid_3d_rs.F \
 exch_uv_bgrid_3d_r4.F \
 exch_uv_bgrid_3d_r8.F \
 exch_uv_bgrid_3d_rl.F \
 exch_uv_bgrid_3d_rs.F \
 exch_uv_dgrid_3d_r4.F \
 exch_uv_dgrid_3d_r8.F \
 exch_uv_dgrid_3d_rl.F \
 exch_uv_dgrid_3d_rs.F \
 exch_uv_xy_r4.F \
 exch_uv_xy_r8.F \
 exch_uv_xy_rl.F \
 exch_uv_xy_rs.F \
 exch_uv_xyz_r4.F \
 exch_uv_xyz_r8.F \
 exch_uv_xyz_rl.F \
 exch_uv_xyz_rs.F \
 exch_xy_r4.F \
 exch_xy_r8.F \
 exch_xy_rl.F \
 exch_xy_rs.F \
 exch_xyz_r4.F \
 exch_xyz_r8.F \
 exch_xyz_rl.F \
 exch_xyz_rs.F \
 exch_z_3d_r4.F \
 exch_z_3d_r8.F \
 exch_z_3d_rl.F \
 exch_z_3d_rs.F \
 fill_cs_corner_ag_rl.F \
 fill_cs_corner_tr_rl.F \
 fill_cs_corner_uv_rl.F \
 fill_cs_corner_uv_rs.F \
 fool_the_compiler.F \
 gather_2d_r4.F \
 gather_2d_r8.F \
 gather_2d_wh_r4.F \
 gather_2d_wh_r8.F \
 gather_vec_r4.F \
 gather_vec_r8.F \
 gather_xz.F \
 gather_yz.F \
 get_periodic_interval.F \
 global_max.F \
 global_sum.F \
 global_sum_singlecpu.F \
 global_sum_tile.F \
 global_vec_sum.F \
 gsum.F \
 ini_communication_patterns.F \
 ini_procs.F \
 ini_threading_environment.F \
 lef_zero.F \
 main.F \
 master_cpu_io.F \
 master_cpu_thread.F \
 mds_byteswapi4.F \
 mds_byteswapr4.F \
 mds_byteswapr8.F \
 mdsfindunit.F \
 mds_flush.F \
 mds_reclen.F \
 memsync.F \
 nml_change_syntax.F \
 nml_set_terminator.F \
 open_copy_data_file.F \
 print.F \
 reset_halo.F \
 scatter_2d_r4.F \
 scatter_2d_r8.F \
 scatter_2d_wh_r4.F \
 scatter_2d_wh_r8.F \
 scatter_vec_r4.F \
 scatter_vec_r8.F \
 scatter_xz.F \
 scatter_yz.F \
 stop_if_error.F \
 timers.F \
 utils.F \
 write_utils.F \
 adams_bashforth2.F \
 adams_bashforth3.F \
 add_walls2masks.F \
 apply_forcing.F \
 calc_3d_diffusivity.F \
 calc_adv_flow.F \
 calc_div_ghat.F \
 calc_eddy_stress.F \
 calc_grad_phi_fv.F \
 calc_grad_phi_hyd.F \
 calc_grad_phi_surf.F \
 calc_grid_angles.F \
 calc_gw.F \
 calc_ivdc.F \
 calc_oce_mxlayer.F \
 calc_phi_hyd.F \
 calc_r_star.F \
 calc_surf_dr.F \
 calc_viscosity.F \
 calc_wsurf_tr.F \
 cg2d_ex0.F \
 cg2d.F \
 cg2d_nsa.F \
 cg2d_sr.F \
 cg3d_ex0.F \
 cg3d.F \
 check_pickup.F \
 config_check.F \
 config_summary.F \
 convective_adjustment.F \
 convective_adjustment_ini.F \
 convectively_mixtracer.F \
 convective_weights.F \
 correction_step.F \
 cycle_ab_tracer.F \
 cycle_tracer.F \
 diags_oceanic_surf_flux.F \
 diags_phi_hyd.F \
 diags_phi_rlow.F \
 diags_rho.F \
 do_atmospheric_phys.F \
 do_fields_blocking_exchanges.F \
 do_oceanic_phys.F \
 do_stagger_fields_exchanges.F \
 do_statevars_diags.F \
 do_statevars_tave.F \
 do_the_model_io.F \
 do_write_pickup.F \
 dynamics.F \
 external_fields_load.F \
 external_forcing.F \
 external_forcing_surf.F \
 find_alpha.F \
 find_hyd_press_1d.F \
 find_rho.F \
 forcing_surf_relax.F \
 forward_step.F \
 freesurf_rescale_g.F \
 freeze_surface.F \
 grad_sigma.F \
 gsw_teos10.F \
 impldiff.F \
 ini_cartesian_grid.F \
 ini_cg2d.F \
 ini_cg3d.F \
 ini_cori.F \
 ini_curvilinear_grid.F \
 ini_cylinder_grid.F \
 ini_depths.F \
 ini_dynvars.F \
 ini_eos.F \
 ini_ffields.F \
 ini_fields.F \
 ini_forcing.F \
 ini_global_domain.F \
 ini_grid.F \
 ini_linear_phisurf.F \
 ini_local_grid.F \
 ini_masks_etc.F \
 ini_mixing.F \
 ini_mnc_vars.F \
 ini_model_io.F \
 ini_nh_fields.F \
 ini_nh_vars.F \
 ini_nlfs_vars.F \
 ini_parms.F \
 ini_p_ground.F \
 ini_pressure.F \
 ini_psurf.F \
 ini_salt.F \
 ini_sigma_hfac.F \
 ini_spherical_polar_grid.F \
 ini_theta.F \
 initialise_fixed.F \
 initialise_varia.F \
 ini_vel.F \
 ini_vertical_grid.F \
 integrate_for_w.F \
 integr_continuity.F \
 load_fields_driver.F \
 load_grid_spacing.F \
 load_ref_files.F \
 main_do_loop.F \
 momentum_correction_step.F \
 packages_boot.F \
 packages_check.F \
 packages_error_msg.F \
 packages_init_fixed.F \
 packages_init_variables.F \
 packages_print_msg.F \
 packages_readparms.F \
 packages_unused_msg.F \
 packages_write_pickup.F \
 plot_field.F \
 port_rand.F \
 post_cg3d.F \
 pre_cg3d.F \
 pressure_for_eos.F \
 read_pickup.F \
 remove_mean.F \
 reset_nlfs_vars.F \
 rotate_spherical_polar_grid.F \
 rotate_uv2en.F \
 salt_integrate.F \
 seawater.F \
 set_defaults.F \
 set_grid_factors.F \
 set_parms.F \
 set_ref_state.F \
 solve_for_pressure.F \
 solve_pentadiagonal.F \
 solve_tridiagonal.F \
 solve_uv_tridiago.F \
 state_summary.F \
 swfrac.F \
 taueddy_init_varia.F \
 taueddy_tendency_apply.F \
 temp_integrate.F \
 the_main_loop.F \
 the_model_main.F \
 thermodynamics.F \
 timestep.F \
 timestep_tracer.F \
 timestep_wvel.F \
 tracers_correction_step.F \
 tracers_iigw_correction.F \
 turnoff_model_io.F \
 update_cg2d.F \
 update_etah.F \
 update_etaws.F \
 update_masks_etc.F \
 update_r_star.F \
 update_sigma.F \
 update_surf_dr.F \
 write_grid.F \
 write_pickup.F \
 write_state.F
NON_AD_F77_SRC_FILES =  \
 cal_daysformonth.F \
 cal_dayspermonth.F \
 cal_init_fixed.F \
 cal_monthsforyear.F \
 cal_monthsperyear.F \
 cal_readparms.F \
 cal_set.F \
 cal_stepsforday.F \
 cal_stepsperday.F \
 cal_summary.F \
 cal_weekday.F \
 chksum_tiled.F \
 debug_call.F \
 debug_cs_corner_uv.F \
 debug_enter.F \
 debug_fld_stats_rl.F \
 debug_fld_stats_rs.F \
 debug_leave.F \
 debug_msg.F \
 debug_stats_rl.F \
 debug_stats_rs.F \
 fill_in_corners_rl.F \
 write_fullarray_rl.F \
 write_fullarray_rs.F \
 diag_calc_psivel.F \
 diag_cg2d.F \
 diagnostics_addtolist.F \
 diagnostics_calc_phivel.F \
 diagnostics_check.F \
 diagnostics_clear.F \
 diagnostics_fill.F \
 diagnostics_fill_field.F \
 diagnostics_fill_rs.F \
 diagnostics_fill_state.F \
 diagnostics_fract_fill.F \
 diagnostics_init_early.F \
 diagnostics_init_fixed.F \
 diagnostics_init_varia.F \
 diagnostics_interp_p2p.F \
 diagnostics_interp_vert.F \
 diagnostics_list_check.F \
 diagnostics_main_init.F \
 diagnostics_mnc_out.F \
 diagnostics_out.F \
 diagnostics_readparms.F \
 diagnostics_read_pickup.F \
 diagnostics_scale_fill.F \
 diagnostics_scale_fill_rs.F \
 diagnostics_set_calc.F \
 diagnostics_setdiag.F \
 diagnostics_set_levels.F \
 diagnostics_set_pointers.F \
 diagnostics_status_error.F \
 diagnostics_sum_levels.F \
 diagnostics_summary.F \
 diagnostics_switch_onoff.F \
 diagnostics_utils.F \
 diagnostics_write.F \
 diagnostics_write_pickup.F \
 diagstats_ascii_out.F \
 diagstats_calc.F \
 diagstats_clear.F \
 diagstats_close_io.F \
 diagstats_fill.F \
 diagstats_global.F \
 diagstats_ini_io.F \
 diagstats_local.F \
 diagstats_mnc_out.F \
 diagstats_others_calc.F \
 diagstats_output.F \
 diagstats_setdiag.F \
 diagstats_set_pointers.F \
 diagstats_set_regions.F \
 diag_vegtile_fill.F \
 exf_ad_dump.F \
 exf_adjoint_snapshots_ad.F \
 exf_adjoint_snapshots.F \
 exf_adjoint_snapshots__g.F \
 exf_check.F \
 exf_check_range.F \
 exf_diagnostics_fill.F \
 exf_diagnostics_init.F \
 exf_getfield_start.F \
 exf_init_fixed.F \
 exf_interp_read.F \
 exf_monitor_ad.F \
 exf_monitor.F \
 exf_readparms.F \
 exf_summary.F \
 exf_zenithangle_table.F \
 gad_advscheme.F \
 gad_check.F \
 gad_diagnostics_init.F \
 gad_diagnostics_state.F \
 gad_init_fixed.F \
 gad_osc_hat_r.F \
 gad_osc_hat_x.F \
 gad_osc_hat_y.F \
 gad_osc_mul_r.F \
 gad_osc_mul_x.F \
 gad_osc_mul_y.F \
 gad_plm_fun.F \
 gad_ppm_adv_r.F \
 gad_ppm_adv_x.F \
 gad_ppm_adv_y.F \
 gad_ppm_flx_r.F \
 gad_ppm_flx_x.F \
 gad_ppm_flx_y.F \
 gad_ppm_fun.F \
 gad_ppm_hat_r.F \
 gad_ppm_hat_x.F \
 gad_ppm_hat_y.F \
 gad_ppm_p3e_r.F \
 gad_ppm_p3e_x.F \
 gad_ppm_p3e_y.F \
 gad_pqm_adv_r.F \
 gad_pqm_adv_x.F \
 gad_pqm_adv_y.F \
 gad_pqm_flx_r.F \
 gad_pqm_flx_x.F \
 gad_pqm_flx_y.F \
 gad_pqm_fun.F \
 gad_pqm_hat_r.F \
 gad_pqm_hat_x.F \
 gad_pqm_hat_y.F \
 gad_pqm_p5e_r.F \
 gad_pqm_p5e_x.F \
 gad_pqm_p5e_y.F \
 gad_write_pickup.F \
 salt_fill.F \
 gmredi_calc_eigs.F \
 gmredi_calc_psi_bvp.F \
 gmredi_calc_urms.F \
 gmredi_check.F \
 gmredi_diagnostics_fill.F \
 gmredi_diagnostics_impl.F \
 gmredi_diagnostics_init.F \
 gmredi_init_fixed.F \
 gmredi_k3d.F \
 gmredi_mnc_init.F \
 gmredi_output.F \
 gmredi_readparms.F \
 gmredi_read_pickup.F \
 gmredi_write_pickup.F \
 submeso_calc_psi.F \
 kpp_check.F \
 kpp_diagnostics_init.F \
 kpp_init_fixed.F \
 kpp_readparms.F \
 mdsio_buffertorl.F \
 mdsio_buffertors.F \
 mdsio_check4file.F \
 mdsio_facef_read.F \
 mdsio_gl.F \
 mdsio_gl_slice.F \
 mdsio_pass_r4torl.F \
 mdsio_pass_r4tors.F \
 mdsio_pass_r8torl.F \
 mdsio_pass_r8tors.F \
 mdsio_rd_rec_rl.F \
 mdsio_rd_rec_rs.F \
 mdsio_read_field.F \
 mdsio_read_meta.F \
 mdsio_read_section.F \
 mdsio_read_tape.F \
 mdsio_readvec_loc.F \
 mdsio_read_whalos.F \
 mdsio_rw_field.F \
 mdsio_rw_slice.F \
 mdsio_seg4torl.F \
 mdsio_seg4tors.F \
 mdsio_seg8torl.F \
 mdsio_seg8tors.F \
 mdsio_segxtorx_2d.F \
 mdsio_write_field.F \
 mdsio_writelocal.F \
 mdsio_write_meta.F \
 mdsio_write_section.F \
 mdsio_write_tape.F \
 mdsio_writevec_loc.F \
 mdsio_write_whalos.F \
 mdsio_wr_metafiles.F \
 mdsio_wr_rec_rl.F \
 mdsio_wr_rec_rs.F \
 mom_calc_3d_strain.F \
 mom_calc_smag_3d.F \
 mom_diagnostics_init.F \
 mom_init_fixed.F \
 mom_u_implicit_r.F \
 mom_uv_smag_3d.F \
 mom_v_implicit_r.F \
 mom_w_coriolis_nh.F \
 mom_w_metric_nh.F \
 mom_w_sidedrag.F \
 mom_w_smag_3d.F \
 mom_uv_boundary.F \
 mon_advcfl.F \
 mon_advcflw2.F \
 mon_advcflw.F \
 mon_calc_advcfl.F \
 mon_calc_stats_rl.F \
 mon_calc_stats_rs.F \
 mon_init.F \
 monitor_ad.F \
 monitor.F \
 monitor_g.F \
 mon_ke.F \
 mon_out.F \
 mon_printstats_rl.F \
 mon_printstats_rs.F \
 mon_set_iounit.F \
 mon_set_pref.F \
 mon_solution.F \
 mon_stats_latbnd_rl.F \
 mon_stats_rl.F \
 mon_stats_rs.F \
 mon_surfcor.F \
 mon_vort3.F \
 mon_writestats_rl.F \
 mon_writestats_rs.F \
 obcs_add_tides.F \
 obcs_check_depths.F \
 obcs_check.F \
 obcs_diag_balance.F \
 obcs_init_fixed.F \
 obcs_monitor.F \
 obcs_mon_stats.F \
 obcs_output.F \
 obcs_readparms.F \
 obcs_seaice_sponge.F \
 obcs_set_connect.F \
 obcs_write_pickup.F \
 get_write_global_fld.F \
 read_glvec_rl.F \
 read_glvec_rs.F \
 read_mflds.F \
 set_write_global_fld.F \
 write_fld_3d_rl.F \
 write_fld_3d_rs.F \
 write_fld_s3d_rl.F \
 write_fld_s3d_rs.F \
 write_fld_xy_rl.F \
 write_fld_xy_rs.F \
 write_fld_xyz_rl.F \
 write_fld_xyz_rs.F \
 write_glvec_rl.F \
 write_glvec_rs.F \
 write_local_rl.F \
 write_local_rs.F \
 write_rec.F \
 all_proc_die.F \
 bar2.F \
 bar_check.F \
 barrier.F \
 check_threads.F \
 comm_stats.F \
 cumulsum_z_tile.F \
 diff_phase_multiple.F \
 eeboot.F \
 eeboot_minimal.F \
 eedata_example.F \
 eedie.F \
 eeintro_msg.F \
 eeset_parms.F \
 eewrite_eeenv.F \
 exch0_r4.F \
 exch0_r8.F \
 exch0_rl.F \
 exch0_rs.F \
 exch1_bg_r4_cube.F \
 exch1_bg_r8_cube.F \
 exch1_bg_rl_cube.F \
 exch1_bg_rs_cube.F \
 exch1_r4_cube.F \
 exch1_r4.F \
 exch1_r8_cube.F \
 exch1_r8.F \
 exch1_rl_ad.F \
 exch1_rl_cube_ad.F \
 exch1_rl_cube.F \
 exch1_rl.F \
 exch1_rs_ad.F \
 exch1_rs_cube_ad.F \
 exch1_rs_cube.F \
 exch1_rs.F \
 exch1_uv_r4_cube.F \
 exch1_uv_r8_cube.F \
 exch1_uv_rl_cube.F \
 exch1_uv_rs_cube.F \
 exch1_z_r4_cube.F \
 exch1_z_r8_cube.F \
 exch1_z_rl_cube.F \
 exch1_z_rs_cube.F \
 exch_3d_r4.F \
 exch_3d_r8.F \
 exch_cycle_ebl.F \
 exch_init.F \
 exch_r4_recv_get_x.F \
 exch_r4_recv_get_y.F \
 exch_r4_send_put_x.F \
 exch_r4_send_put_y.F \
 exch_r8_recv_get_x.F \
 exch_r8_recv_get_y.F \
 exch_r8_send_put_x.F \
 exch_r8_send_put_y.F \
 exch_rl_recv_get_x.F \
 exch_rl_recv_get_y.F \
 exch_rl_send_put_x.F \
 exch_rl_send_put_y.F \
 exch_rs_recv_get_x.F \
 exch_rs_recv_get_y.F \
 exch_rs_send_put_x.F \
 exch_rs_send_put_y.F \
 exch_s3d_r4.F \
 exch_s3d_r8.F \
 exch_s3d_rl.F \
 exch_s3d_rs.F \
 exch_sm_3d_r4.F \
 exch_sm_3d_r8.F \
 exch_sm_3d_rs.F \
 exch_uv_3d_r4.F \
 exch_uv_3d_r8.F \
 exch_uv_agrid_3d_r4.F \
 exch_uv_agrid_3d_r8.F \
 exch_uv_bgrid_3d_r4.F \
 exch_uv_bgrid_3d_r8.F \
 exch_uv_bgrid_3d_rl.F \
 exch_uv_bgrid_3d_rs.F \
 exch_uv_dgrid_3d_r4.F \
 exch_uv_dgrid_3d_r8.F \
 exch_uv_xy_r4.F \
 exch_uv_xy_r8.F \
 exch_uv_xyz_r4.F \
 exch_uv_xyz_r8.F \
 exch_xy_r4.F \
 exch_xy_r8.F \
 exch_xyz_r4.F \
 exch_xyz_r8.F \
 exch_z_3d_r4.F \
 exch_z_3d_r8.F \
 exch_z_3d_rl.F \
 exch_z_3d_rs.F \
 fool_the_compiler.F \
 gather_2d_r4.F \
 gather_2d_r8.F \
 gather_2d_wh_r4.F \
 gather_2d_wh_r8.F \
 gather_vec_r4.F \
 gather_vec_r8.F \
 gather_xz.F \
 gather_yz.F \
 global_max.F \
 global_sum.F \
 global_sum_singlecpu.F \
 global_sum_tile.F \
 global_vec_sum.F \
 gsum.F \
 ini_communication_patterns.F \
 ini_procs.F \
 ini_threading_environment.F \
 main.F \
 master_cpu_io.F \
 master_cpu_thread.F \
 mds_byteswapi4.F \
 mds_byteswapr4.F \
 mds_byteswapr8.F \
 mdsfindunit.F \
 mds_flush.F \
 mds_reclen.F \
 memsync.F \
 nml_change_syntax.F \
 nml_set_terminator.F \
 open_copy_data_file.F \
 print.F \
 reset_halo.F \
 scatter_2d_r4.F \
 scatter_2d_r8.F \
 scatter_2d_wh_r4.F \
 scatter_2d_wh_r8.F \
 scatter_vec_r4.F \
 scatter_vec_r8.F \
 scatter_xz.F \
 scatter_yz.F \
 stop_if_error.F \
 timers.F \
 utils.F \
 write_utils.F \
 calc_eddy_stress.F \
 calc_grid_angles.F \
 calc_gw.F \
 calc_oce_mxlayer.F \
 cg2d_ex0.F \
 cg2d.F \
 cg2d_sr.F \
 cg3d_ex0.F \
 cg3d.F \
 check_pickup.F \
 config_check.F \
 config_summary.F \
 diags_oceanic_surf_flux.F \
 do_statevars_diags.F \
 do_statevars_tave.F \
 do_the_model_io.F \
 do_write_pickup.F \
 external_forcing.F \
 find_hyd_press_1d.F \
 gsw_teos10.F \
 ini_cg3d.F \
 ini_eos.F \
 ini_global_domain.F \
 ini_local_grid.F \
 ini_mnc_vars.F \
 ini_model_io.F \
 ini_nh_vars.F \
 ini_parms.F \
 initialise_fixed.F \
 load_ref_files.F \
 packages_boot.F \
 packages_check.F \
 packages_error_msg.F \
 packages_init_fixed.F \
 packages_print_msg.F \
 packages_readparms.F \
 packages_unused_msg.F \
 packages_write_pickup.F \
 plot_field.F \
 port_rand.F \
 post_cg3d.F \
 pre_cg3d.F \
 rotate_spherical_polar_grid.F \
 set_defaults.F \
 set_grid_factors.F \
 set_parms.F \
 set_ref_state.F \
 solve_uv_tridiago.F \
 the_model_main.F \
 timestep_wvel.F \
 tracers_iigw_correction.F \
 turnoff_model_io.F \
 write_grid.F \
 write_pickup.F \
 write_state.F
C_SRC_FILES =  \
 gsl_ieee_env.c \
 ptwrapper.c \
 setdir.c \
 setrlstk.c \
 sigreg.c \
 tim.c \
 timer_stats.c
F90_SRC_FILES = 
H_SRC_FILES =  \
 CPP_OPTIONS.h \
 DIAGNOSTICS_SIZE.h \
 EXF_OPTIONS.h \
 GMREDI_OPTIONS.h \
 KPP_OPTIONS.h \
 OBCS_OPTIONS.h \
 SIZE.h \
 cal.h \
 CAL_OPTIONS.h \
 DEBUG_OPTIONS.h \
 DIAGNOSTICS_CALC.h \
 DIAGNOSTICS.h \
 DIAG_OPTIONS.h \
 DIAGSTATS_REGIONS.h \
 exf_ad_check_lev1_dir.h \
 exf_ad_check_lev2_dir.h \
 exf_ad_check_lev3_dir.h \
 exf_ad_check_lev4_dir.h \
 EXF_CONSTANTS.h \
 EXF_FIELDS.h \
 EXF_PARAM.h \
 gad_ad_check_lev1_dir.h \
 gad_ad_check_lev2_dir.h \
 gad_ad_check_lev3_dir.h \
 gad_ad_check_lev4_dir.h \
 GAD_FLUX_LIMITER.h \
 GAD.h \
 GAD_OPTIONS.h \
 GAD_SOM_VARS.h \
 GMREDI.h \
 GMREDI_TAVE.h \
 KPP.h \
 KPP_PARAMS.h \
 KPP_TAVE.h \
 MDSIO_BUFF_3D.h \
 MDSIO_BUFF_WH.h \
 MDSIO_OPTIONS.h \
 MOM_COMMON_OPTIONS.h \
 MOM_VISC.h \
 MOM_FLUXFORM.h \
 MOM_FLUXFORM_OPTIONS.h \
 MOM_VECINV_OPTIONS.h \
 MONITOR.h \
 MONITOR_OPTIONS.h \
 obcs_ad_check_lev1_dir.h \
 obcs_ad_check_lev2_dir.h \
 obcs_ad_check_lev3_dir.h \
 obcs_ad_check_lev4_dir.h \
 OBCS_FIELDS.h \
 OBCS_GRID.h \
 OBCS_PARAMS.h \
 OBCS_PTRACERS.h \
 OBCS_SEAICE.h \
 ORLANSKI.h \
 RW_MFLDS.h \
 RW_OPTIONS.h \
 aio.h \
 aliases.h \
 alloca.h \
 ansidecl.h \
 a.out.h \
 argp.h \
 argz.h \
 ar.h \
 assert.h \
 auparse-defs.h \
 auparse.h \
 autosprintf.h \
 autotest.h \
 bfd.h \
 bfdlink.h \
 byteswap.h \
 bzlib.h \
 canberra-gtk.h \
 canberra.h \
 cap-ng.h \
 check.h \
 complex.h \
 cpio.h \
 crypt.h \
 ctype.h \
 cursesapp.h \
 cursesf.h \
 curses.h \
 cursesm.h \
 cursesp.h \
 cursesw.h \
 cursslk.h \
 db_185.h \
 db_cxx.h \
 db.h \
 dejagnu.h \
 dirent.h \
 dis-asm.h \
 dlfcn.h \
 dwarf.h \
 ecpg_config.h \
 ecpg_config_x86_64.h \
 ecpgerrno.h \
 ecpg_informix.h \
 ecpglib.h \
 ecpgtype.h \
 elf.h \
 endian.h \
 envz.h \
 err.h \
 errno.h \
 error.h \
 eti.h \
 etip.h \
 execinfo.h \
 expat_external.h \
 expat.h \
 f77papi.h \
 f90papi.h \
 fam.h \
 fcntl.h \
 features.h \
 fenv.h \
 fftw3.h \
 FlexLexer.h \
 fmtmsg.h \
 fnmatch.h \
 form.h \
 fpapi.h \
 fpu_control.h \
 fstab.h \
 ft2build.h \
 fts.h \
 ftw.h \
 fuse.h \
 _G_config.h \
 gconv.h \
 gcrypt.h \
 gcrypt-module.h \
 gdbm.h \
 gelf.h \
 getopt.h \
 gettext-po.h \
 glob.h \
 gmp.h \
 gmp-mparam.h \
 gmp-mparam-x86_64.h \
 gmp-x86_64.h \
 gmpxx.h \
 gnu-versions.h \
 gpg-error.h \
 grp.h \
 gshadow.h \
 gssapi.h \
 hugetlbfs.h \
 ical.h \
 iconv.h \
 idna.h \
 idn-free.h \
 idn-int.h \
 ieee1284.h \
 ieee754.h \
 ifaddrs.h \
 inttypes.h \
 ip6tables.h \
 iptables.h \
 jconfig.h \
 jerror.h \
 jmorecfg.h \
 jpeglib.h \
 kdb.h \
 keyutils.h \
 krb5.h \
 langinfo.h \
 lastlog.h \
 lber.h \
 lber_types.h \
 ldap_cdefs.h \
 ldap_features.h \
 ldap.h \
 ldap_schema.h \
 ldap_utf8.h \
 ldif.h \
 libaio.h \
 libaudit.h \
 libcgroup.h \
 libelf.h \
 libgen.h \
 libiberty.h \
 libintl.h \
 libio.h \
 libipq.h \
 libmng_conf.h \
 libmng.h \
 libmng_types.h \
 libpq-events.h \
 libpq-fe.h \
 libtasn1.h \
 libudev.h \
 limits.h \
 link.h \
 locale.h \
 lzma.h \
 magic.h \
 malloc.h \
 math.h \
 mcheck.h \
 memory.h \
 menu.h \
 mntent.h \
 monetary.h \
 mpf2mpfr.h \
 mpfr.h \
 mp.h \
 mqueue.h \
 nc_tparm.h \
 ncurses_dll.h \
 ncurses.h \
 netapi.h \
 netdb.h \
 nlist.h \
 nl_types.h \
 nss.h \
 numacompat1.h \
 numa.h \
 numaif.h \
 obstack.h \
 odbcinstext.h \
 odbcinst.h \
 panel.h \
 papi.h \
 papiStdEventDefs.h \
 paths.h \
 pcrecpparg.h \
 pcrecpp.h \
 pcre.h \
 pcreposix.h \
 pcre_scanner.h \
 pcre_stringpiece.h \
 pg_config.h \
 pg_config_manual.h \
 pg_config_os.h \
 pg_config_x86_64.h \
 pgtypes_date.h \
 pgtypes_error.h \
 pgtypes_interval.h \
 pgtypes_numeric.h \
 pgtypes_timestamp.h \
 pngconf.h \
 png.h \
 poll.h \
 popt.h \
 postgres_ext.h \
 pr29.h \
 printf.h \
 profile.h \
 psm.h \
 psm_mq.h \
 pthread.h \
 pty.h \
 punycode.h \
 pwd.h \
 re_comp.h \
 regex.h \
 regexp.h \
 resolv.h \
 sched.h \
 search.h \
 semaphore.h \
 setjmp.h \
 sgtty.h \
 shadow.h \
 signal.h \
 slapi-plugin.h \
 snappy-c.h \
 snappy.h \
 snappy-sinksource.h \
 snappy-stubs-public.h \
 spawn.h \
 sql3types.h \
 sqlca.h \
 sqlext.h \
 sql.h \
 sqlite3ext.h \
 sqlite3.h \
 sqltypes.h \
 sqlucode.h \
 stab.h \
 stdint.h \
 stdio_ext.h \
 stdio.h \
 stdlib.h \
 string.h \
 stringprep.h \
 strings.h \
 symcat.h \
 syscall.h \
 sysexits.h \
 syslog.h \
 tar.h \
 tclDecls.h \
 tcl.h \
 tclPlatDecls.h \
 tclTomMathDecls.h \
 tclTomMath.h \
 tcpd.h \
 termcap.h \
 term_entry.h \
 term.h \
 termio.h \
 termios.h \
 tgmath.h \
 thread_db.h \
 tic.h \
 tiffconf-64.h \
 tiffconf.h \
 tiff.h \
 tiffio.h \
 tiffvers.h \
 time.h \
 tkDecls.h \
 tk.h \
 tkPlatDecls.h \
 tld.h \
 topology.h \
 ttyent.h \
 ucontext.h \
 ulimit.h \
 ulockmgr.h \
 unctrl.h \
 unistd.h \
 unixodbc_conf.h \
 unixodbc_conf_x86_64.h \
 uodbc_extras.h \
 uodbc_stats.h \
 usb.h \
 usbpp.h \
 ustat.h \
 utime.h \
 utmp.h \
 utmpx.h \
 values.h \
 verto.h \
 verto-module.h \
 wait.h \
 wchar.h \
 wctype.h \
 wordexp.h \
 xf86drm.h \
 xf86drmMode.h \
 xlocale.h \
 xtables.h \
 zconf.h \
 zlib.h \
 BAR2.h \
 BARRIER.h \
 CPP_EEMACROS.h \
 CPP_EEOPTIONS.h \
 CUMULSUM.h \
 DEF_IN_MAKEFILE.h \
 EEBUFF_SCPU.h \
 EEPARAMS.h \
 EESUPPORT.h \
 EXCH.h \
 GLOBAL_MAX.h \
 GLOBAL_SUM.h \
 MAIN_PDIRECTIVES1.h \
 MAIN_PDIRECTIVES2.h \
 MPI_INFO.h \
 SIGREG.h \
 CG2D.h \
 CG3D.h \
 DXC_MACROS.h \
 DXF_MACROS.h \
 DXG_MACROS.h \
 DXV_MACROS.h \
 DYC_MACROS.h \
 DYF_MACROS.h \
 DYG_MACROS.h \
 DYNVARS.h \
 DYU_MACROS.h \
 EOS.h \
 FCORI_MACROS.h \
 FFIELDS.h \
 GRID.h \
 GRID_MACROS.h \
 HFACC_MACROS.h \
 HFACS_MACROS.h \
 HFACW_MACROS.h \
 MASKS_MACROS.h \
 MASKW_MACROS.h \
 NH_VARS.h \
 PARAMS.h \
 RA_MACROS.h \
 RAS_MACROS.h \
 RAW_MACROS.h \
 RECIP_DXC_MACROS.h \
 RECIP_DXF_MACROS.h \
 RECIP_DXG_MACROS.h \
 RECIP_DXV_MACROS.h \
 RECIP_DYC_MACROS.h \
 RECIP_DYF_MACROS.h \
 RECIP_DYG_MACROS.h \
 RECIP_DYU_MACROS.h \
 RECIP_HFACC_MACROS.h \
 RECIP_HFACS_MACROS.h \
 RECIP_HFACW_MACROS.h \
 RESTART.h \
 SET_GRID.h \
 SOLVE_FOR_PRESSURE3D.h \
 SOLVE_FOR_PRESSURE.h \
 SURFACE.h \
 TANPHIATU_MACROS.h \
 TANPHIATV_MACROS.h \
 THE_MODEL_COMMON_BLOCKS.h \
 XC_MACROS.h \
 YC_MACROS.h
AD_FLOW_FILES =  \
 debug_ad.flow \
 diagnostics_ad.flow \
 exf_ad.flow \
 gmredi_ad.flow \
 mdsio_ad.flow \
 monitor_ad.flow \
 obcs_ad.flow \
 rw_ad.flow \
 eesupp.flow \
 exch1_ad.flow

F77_PP_SRC_FILES = $(F77_SRC_FILES:.F=.f)
F90_PP_SRC_FILES = $(F90_SRC_FILES:.F90=.f90)
OBJFILES= $(F77_SRC_FILES:.F=.o) $(C_SRC_FILES:.c=.o) $(F90_SRC_FILES:.F90=.o)
FLOWFILES =  $(AD_FLOW_FILES:.flow=.flowdir)

.SUFFIXES:
.SUFFIXES: .o .f .p .F .c .ff90 .f90 .FF90 .F90 .flowdir .flow

all: fwd_exe_target
fwd_exe_target:
	@echo Update AD_CONFIG.h and make $(EXECUTABLE)
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Forward version" -bAD_CONFIG_H -UALLOW_ADJOINT_RUN -UALLOW_TANGENTLINEAR_RUN > ad_config.template
	@cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	@-rm -f ad_config.template
	$(MAKE) -f $(MAKEFILE) $(EXECUTABLE)

$(EXECUTABLE): $(SPECIAL_FILES) $(F77_SRC_FILES) $(C_SRC_FILES) $(H_SRC_FILES) $(F90_SRC_FILES) $(OBJFILES) $(EMBEDDED_FILES)
	@echo Creating $@ ...
	$(LINK) -o $@ $(FFLAGS) $(FOPTIM) $(OBJFILES) $(LIBS)

depend:
	@$(MAKE) -f $(MAKEFILE) links
	$(MAKEDEPEND) -f $(MAKEFILE) -o .f $(DEFINES) $(INCLUDES) $(CPPINCLUDES) $(F77_SRC_FILES)
	$(TOOLSDIR)/f90mkdepend >> $(MAKEFILE)
	-rm -f makedepend.out

lib: libmitgcmuv.a

libmitgcmuv.a: $(OBJFILES)
	ar rcv libmitgcmuv.a $(OBJFILES)
	ar d   libmitgcmuv.a main.o

obj: $(OBJFILES)

links: $(F77_SRC_FILES) $(C_SRC_FILES) $(H_SRC_FILES) $(F90_SRC_FILES) $(SPECIAL_FILES)

small_f: $(F77_PP_SRC_FILES) $(F90_PP_SRC_FILES)

# remove most of the files that "make" generates
clean:
	-rm -rf *.p *.f90 *.mod  work.{pc,pcl} *.template
	-rm -rf *.o
	-rm -rf *.f *.flowdir
	-rm -rf *.ff90 $(AD_CLEAN) ad_input*

# remove most of the files that "make" and "make depend" generate
Clean:
	@$(MAKE) -f $(MAKEFILE) clean
	@$(MAKE) -f $(MAKEFILE) cleanlinks
	-rm -f $(SPECIAL_FILES) f90mkdepend.log Makefile.old
	-rm -f taf_command taf_output taf_ad.log taf_ad_flow.log taf_ftl.log

# remove also the executable, files that "genmake2" generates (except Makefile)
#         and output from a run (plus log files from testreport)
CLEAN:
	@$(MAKE) -f $(MAKEFILE) Clean
	-rm -f $(EXECUTABLE) $(EXE_AD) $(EXE_FTL) *.bak
	-rm -f genmake.log genmake_state genmake_*optfile
	-rm -f SIZE.h.mpi genmake.tr_log make.tr_log
	-rm -rf mpi_headers mnc_test_*
	-find $(EXEDIR) -name "*.meta" -exec rm {} \;
	-find $(EXEDIR) -name "*.data" -exec rm {} \;
	-find $(EXEDIR) -name "fort.*" -exec rm {} \;
	-rm -f *.txt STDOUT.* STDERR.* *diagnostics.log *.[0-9][0-9][0-9][0-9].log
	-rm -f datetime costfinal divided.ctrl snapshot* output_adm.txt.diva_*
	-rm -f *_MIT_CE_000.opt0000 costfunction*0000
	-rm -f oad_cp.[0-9][0-9][0-9].?????

makefile:
	$(TOOLSDIR)/genmake2  "-mpi" "-mods=../code/" "-of=../../../tools/build_options/linux_amd64_ifort_qian"
cleanlinks:
	-find . -type l -exec rm {} \;

# Special targets (SPECIAL_FILES) which are created by make
PACKAGES_CONFIG.h:
	@echo Creating $@ ...
	@$(TOOLSDIR)/convert_cpp_cmd2defines -bPACKAGES_CONFIG_H "Disabled packages:" $(DISABLED_PACKAGES) " " "Enabled packages:" $(ENABLED_PACKAGES) > $@
AD_CONFIG.h:
	@echo Creating $@ ...
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Default version" -bAD_CONFIG_H -UALLOW_ADJOINT_RUN -UALLOW_TANGENTLINEAR_RUN > $@
FC_NAMEMANGLE.h:
	@echo Creating $@ ...
	echo "#define FC_NAMEMANGLE(X)  X ## _" > $@

BUILD_INFO.h:
	@echo Creating $@ ...
	-echo "#define THISVER 'checkpoint65y'" > $@
	-echo "#define THISUSER 'liuyi'" >> $@
	-echo "#define THISDATE 'Wed May 31 21:22:49 CST 2017'" >> $@
	-echo "#define THISHOST 'login'" >> $@

# The normal chain of rules is (  .F - .f - .o  )

## This nullifies any default implicit rules concerning these two file types:
## %.o : %.F

# C preprocessing and replacing the _d in constants:
CPPCMD = cat $< |  /usr/bin/cpp -P -traditional $(DEFINES) $(INCLUDES) | $(TOOLSDIR)/set64bitConst.sh

.F.f:
	$(CPPCMD)  > $@
.f.o:
	$(FC) $(FFLAGS) $(FOPTIM) -c $<
.F.o:
	$(FC) $(FFLAGS) $(FOPTIM) -c $<
.F90.f90:
	$(CPPCMD)  > $@
.FF90.ff90:
	$(CPPCMD)  > $@
.f90.o:
	$(F90C) $(F90FLAGS) $(F90OPTIM) -c $<
.ff90.o:
	cp $< $(basename  $<).f90
	$(F90C) $(F90FLAGS) $(F90OPTIM) -c $(F90FIXEDFORMAT) $(basename  $<).f90
.c.o:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -c $<
.flow.flowdir:
	$(CPPCMD) > $@

# Special exceptions that use the ( .F - .p - .f - .o ) rule-chain
.F.p:
	$(CPPCMD) > $@
.p.f:
	$(KPP) $(KFLAGS1)$@ $(KFLAGS2) $<


TAMC           = tamc
TAF            = staf

TAF_EXTRA      = 
TAMC_EXTRA     = 
LOCAL_MPI_HEADERS    = 

AD_TAMC_FLAGS        = -reverse -admark ad -i4 -r4 -l tamc_ad.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_gen2d_dummy xx_gen3d_dummy xx_genarr2d_dummy xx_genarr3d_dummy xx_gentim2d_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_shifwflx_dummy xx_relaxsst_dummy xx_relaxsss_dummy xx_atemp_mean_dummy xx_aqh_mean_dummy xx_precip_mean_dummy xx_swdown_mean_dummy xx_uwind_mean_dummy xx_vwind_mean_dummy' -output 'fc'
AD_TAF_FLAGS         = -server fastopt.net -f77 -reverse -i4 -r4 -intrinsic system,flush -l taf_ad.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_gen2d_dummy xx_gen3d_dummy xx_genarr2d_dummy xx_genarr3d_dummy xx_gentim2d_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_shifwflx_dummy xx_relaxsst_dummy xx_relaxsss_dummy xx_atemp_mean_dummy xx_aqh_mean_dummy xx_precip_mean_dummy xx_swdown_mean_dummy xx_uwind_mean_dummy xx_vwind_mean_dummy' -output 'fc'
FTL_TAMC_FLAGS       = -forward -ftlmark g_ -i4 -r4 -l tamc_ftl.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_gen2d_dummy xx_gen3d_dummy xx_genarr2d_dummy xx_genarr3d_dummy xx_gentim2d_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_shifwflx_dummy xx_relaxsst_dummy xx_relaxsss_dummy xx_atemp_mean_dummy xx_aqh_mean_dummy xx_precip_mean_dummy xx_swdown_mean_dummy xx_uwind_mean_dummy xx_vwind_mean_dummy' -output 'fc'
FTL_TAF_FLAGS        = -server fastopt.net -f77 -forward -i4 -r4 -intrinsic system,flush -l taf_ftl.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_gen2d_dummy xx_gen3d_dummy xx_genarr2d_dummy xx_genarr3d_dummy xx_gentim2d_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_shifwflx_dummy xx_relaxsst_dummy xx_relaxsss_dummy xx_atemp_mean_dummy xx_aqh_mean_dummy xx_precip_mean_dummy xx_swdown_mean_dummy xx_uwind_mean_dummy xx_vwind_mean_dummy' -output 'fc'
SVD_TAMC_FLAGS       = -reverse -forward -pure -i4 -r4 -l tamc_svd.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_gen2d_dummy xx_gen3d_dummy xx_genarr2d_dummy xx_genarr3d_dummy xx_gentim2d_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_shifwflx_dummy xx_relaxsst_dummy xx_relaxsss_dummy xx_atemp_mean_dummy xx_aqh_mean_dummy xx_precip_mean_dummy xx_swdown_mean_dummy xx_uwind_mean_dummy xx_vwind_mean_dummy' -output 'fc'
SVD_TAF_FLAGS        = -server fastopt.net -f77 -reverse -forward -pure -i4 -r4 -intrinsic system,flush -l taf_svd.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_gen2d_dummy xx_gen3d_dummy xx_genarr2d_dummy xx_genarr3d_dummy xx_gentim2d_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_shifwflx_dummy xx_relaxsst_dummy xx_relaxsss_dummy xx_atemp_mean_dummy xx_aqh_mean_dummy xx_precip_mean_dummy xx_swdown_mean_dummy xx_uwind_mean_dummy xx_vwind_mean_dummy' -output 'fc'

AD_FILES =  \
 cal_addtime.f \
 cal_checkdate.f \
 cal_compdates.f \
 cal_convdate.f \
 cal_copydate.f \
 cal_fulldate.f \
 cal_getdate.f \
 cal_getmonthsrec.f \
 cal_intdays.f \
 cal_intmonths.f \
 cal_intyears.f \
 cal_isleap.f \
 cal_numints.f \
 cal_printdate.f \
 cal_printerror.f \
 cal_subdates.f \
 cal_time2dump.f \
 cal_timeinterval.f \
 cal_timepassed.f \
 cal_timestamp.f \
 cal_toseconds.f \
 diagnostics_is_on.f \
 exf_init.f \
 exf_bulkformulae.f \
 exf_filter_rl.f \
 exf_getclim.f \
 exf_getffields.f \
 exf_getffieldrec.f \
 exf_getforcing.f \
 exf_getsurfacefluxes.f \
 exf_getyearlyfieldname.f \
 exf_interp.f \
 exf_interp_uv.f \
 exf_interpolate.f \
 exf_mapfields.f \
 exf_radiation.f \
 exf_set_gen.f \
 exf_set_obcs.f \
 exf_set_uv.f \
 exf_swapffields.f \
 exf_wind.f \
 exf_zenithangle.f \
 gad_advection.f \
 gad_biharm_r.f \
 gad_biharm_x.f \
 gad_biharm_y.f \
 gad_c2_adv_r.f \
 gad_c2_impl_r.f \
 gad_c2_adv_x.f \
 gad_c2_adv_y.f \
 gad_c4_adv_r.f \
 gad_c4_adv_x.f \
 gad_c4_adv_y.f \
 gad_calc_rhs.f \
 gad_del2.f \
 gad_diff_r.f \
 gad_diff_x.f \
 gad_diff_y.f \
 gad_dst2u1_adv_r.f \
 gad_dst2u1_impl_r.f \
 gad_dst2u1_adv_x.f \
 gad_dst2u1_adv_y.f \
 gad_dst3_adv_x.f \
 gad_dst3_adv_y.f \
 gad_dst3_adv_r.f \
 gad_dst3fl_adv_x.f \
 gad_dst3fl_adv_y.f \
 gad_dst3fl_adv_r.f \
 gad_dst3fl_impl_r.f \
 gad_fluxlimit_adv_r.f \
 gad_fluxlimit_impl_r.f \
 gad_fluxlimit_adv_x.f \
 gad_fluxlimit_adv_y.f \
 gad_grad_x.f \
 gad_grad_y.f \
 gad_implicit_r.f \
 gad_init_varia.f \
 gad_os7mp_adv_x.f \
 gad_os7mp_adv_y.f \
 gad_os7mp_adv_r.f \
 gad_read_pickup.f \
 gad_u3_adv_r.f \
 gad_u3c4_impl_r.f \
 gad_u3_adv_x.f \
 gad_u3_adv_y.f \
 gad_som_advect.f \
 gad_som_adv_r.f \
 gad_som_adv_x.f \
 gad_som_adv_y.f \
 gad_som_fill_cs_corner.f \
 gad_som_lim_r.f \
 gad_som_prep_cs_corner.f \
 gad_som_exchanges.f \
 gad_exch_som.f \
 gmredi_calc_diff.f \
 gmredi_calc_psi_b.f \
 gmredi_calc_tensor.f \
 gmredi_do_exch.f \
 gmredi_init_varia.f \
 gmredi_residual_flow.f \
 gmredi_rtransport.f \
 gmredi_slope_limit.f \
 gmredi_slope_psi.f \
 gmredi_xtransport.f \
 gmredi_ytransport.f \
 kpp_calc.f \
 kpp_calc_diff_t.f \
 kpp_calc_diff_s.f \
 kpp_calc_diff_ptr.f \
 kpp_calc_visc.f \
 kpp_output.f \
 kpp_do_exch.f \
 kpp_init_varia.f \
 kpp_routines.f \
 kpp_transport_s.f \
 kpp_transport_t.f \
 kpp_transport_ptr.f \
 kpp_forcing_surf.f \
 mom_calc_absvort3.f \
 mom_calc_hdiv.f \
 mom_calc_hfacz.f \
 mom_calc_ke.f \
 mom_calc_relvort3.f \
 mom_calc_strain.f \
 mom_calc_tension.f \
 mom_calc_visc.f \
 mom_hdissip.f \
 mom_quasihydrostatic.f \
 mom_u_coriolis_nh.f \
 mom_u_metric_nh.f \
 mom_u_bottomdrag.f \
 mom_u_rviscflux.f \
 mom_u_sidedrag.f \
 mom_v_coriolis_nh.f \
 mom_v_metric_nh.f \
 mom_v_bottomdrag.f \
 mom_v_rviscflux.f \
 mom_v_sidedrag.f \
 mom_calc_rtrans.f \
 mom_fluxform.f \
 mom_u_adv_uu.f \
 mom_u_adv_vu.f \
 mom_u_adv_wu.f \
 mom_u_coriolis.f \
 mom_u_del2u.f \
 mom_u_metric_cylinder.f \
 mom_u_metric_sphere.f \
 mom_u_xviscflux.f \
 mom_u_yviscflux.f \
 mom_v_adv_uv.f \
 mom_v_adv_vv.f \
 mom_v_adv_wv.f \
 mom_v_coriolis.f \
 mom_v_del2v.f \
 mom_v_metric_cylinder.f \
 mom_v_metric_sphere.f \
 mom_v_xviscflux.f \
 mom_v_yviscflux.f \
 mom_vecinv.f \
 mom_vi_coriolis.f \
 mom_vi_del2uv.f \
 mom_vi_hdissip.f \
 mom_vi_u_coriolis.f \
 mom_vi_u_coriolis_c4.f \
 mom_vi_u_grad_ke.f \
 mom_vi_u_vertshear.f \
 mom_vi_v_coriolis.f \
 mom_vi_v_coriolis_c4.f \
 mom_vi_v_grad_ke.f \
 mom_vi_v_vertshear.f \
 obcs_adjust_uvice.f \
 obcs_apply_eta.f \
 obcs_apply_seaice.f \
 obcs_apply_uvice.f \
 obcs_apply_r_star.f \
 obcs_apply_surf_dr.f \
 obcs_apply_ts.f \
 obcs_apply_uv.f \
 obcs_apply_w.f \
 obcs_apply_ptracer.f \
 obcs_calc.f \
 obcs_calc_stevens.f \
 obcs_copy_uv_n.f \
 obcs_save_uv_n.f \
 obcs_copy_tracer.f \
 obcs_u1_adv_tracer.f \
 obcs_exchanges.f \
 obcs_exf_load.f \
 obcs_fields_load.f \
 obcs_init_variables.f \
 obcs_prescribe_read.f \
 obcs_read_pickup.f \
 obcs_sponge.f \
 obcs_balance_flow.f \
 orlanski_east.f \
 orlanski_north.f \
 orlanski_south.f \
 orlanski_west.f \
 orlanski_init.f \
 read_fld_xyz_rs.f \
 read_fld_xyz_rl.f \
 read_fld_xy_rs.f \
 read_fld_xy_rl.f \
 read_rec.f \
 different_multiple.f \
 fill_cs_corner_ag_rl.f \
 fill_cs_corner_tr_rl.f \
 fill_cs_corner_uv_rs.f \
 fill_cs_corner_uv_rl.f \
 get_periodic_interval.f \
 lef_zero.f \
 exch_sm_3d_rl.f \
 exch_3d_rs.f \
 exch_3d_rl.f \
 exch_xy_rl.f \
 exch_xy_rs.f \
 exch_xyz_rl.f \
 exch_xyz_rs.f \
 exch_uv_3d_rs.f \
 exch_uv_3d_rl.f \
 exch_uv_xy_rs.f \
 exch_uv_xy_rl.f \
 exch_uv_xyz_rs.f \
 exch_uv_xyz_rl.f \
 exch_uv_agrid_3d_rs.f \
 exch_uv_agrid_3d_rl.f \
 exch_uv_dgrid_3d_rs.f \
 exch_uv_dgrid_3d_rl.f \
 adams_bashforth2.f \
 adams_bashforth3.f \
 add_walls2masks.f \
 apply_forcing.f \
 calc_3d_diffusivity.f \
 calc_adv_flow.f \
 calc_div_ghat.f \
 calc_grad_phi_fv.f \
 calc_grad_phi_hyd.f \
 calc_grad_phi_surf.f \
 calc_ivdc.f \
 calc_phi_hyd.f \
 calc_r_star.f \
 calc_surf_dr.f \
 calc_viscosity.f \
 calc_wsurf_tr.f \
 cg2d_nsa.f \
 convective_adjustment.f \
 convective_adjustment_ini.f \
 convective_weights.f \
 convectively_mixtracer.f \
 correction_step.f \
 cycle_ab_tracer.f \
 cycle_tracer.f \
 diags_phi_hyd.f \
 diags_phi_rlow.f \
 diags_rho.f \
 do_atmospheric_phys.f \
 do_fields_blocking_exchanges.f \
 do_oceanic_phys.f \
 do_stagger_fields_exchanges.f \
 dynamics.f \
 external_fields_load.f \
 external_forcing_surf.f \
 forcing_surf_relax.f \
 find_alpha.f \
 find_rho.f \
 forward_step.f \
 freesurf_rescale_g.f \
 freeze_surface.f \
 grad_sigma.f \
 impldiff.f \
 ini_cartesian_grid.f \
 ini_cg2d.f \
 ini_cori.f \
 ini_curvilinear_grid.f \
 ini_cylinder_grid.f \
 ini_depths.f \
 ini_ffields.f \
 ini_fields.f \
 ini_forcing.f \
 ini_grid.f \
 ini_linear_phisurf.f \
 ini_masks_etc.f \
 ini_mixing.f \
 ini_nh_fields.f \
 ini_nlfs_vars.f \
 ini_p_ground.f \
 ini_pressure.f \
 ini_psurf.f \
 ini_salt.f \
 ini_sigma_hfac.f \
 ini_spherical_polar_grid.f \
 ini_theta.f \
 ini_dynvars.f \
 ini_vel.f \
 ini_vertical_grid.f \
 initialise_varia.f \
 integrate_for_w.f \
 integr_continuity.f \
 load_fields_driver.f \
 load_grid_spacing.f \
 main_do_loop.f \
 momentum_correction_step.f \
 packages_init_variables.f \
 pressure_for_eos.f \
 read_pickup.f \
 remove_mean.f \
 reset_nlfs_vars.f \
 rotate_uv2en.f \
 salt_integrate.f \
 temp_integrate.f \
 seawater.f \
 solve_for_pressure.f \
 state_summary.f \
 solve_pentadiagonal.f \
 solve_tridiagonal.f \
 taueddy_init_varia.f \
 taueddy_tendency_apply.f \
 timestep.f \
 the_main_loop.f \
 thermodynamics.f \
 timestep_tracer.f \
 tracers_correction_step.f \
 update_cg2d.f \
 update_etah.f \
 update_etaws.f \
 update_masks_etc.f \
 update_r_star.f \
 update_sigma.f \
 update_surf_dr.f \
 swfrac.f

# ... AD ...
adall: ad_exe_target
adtaf: ad_taf_output.f
adtamc: ad_tamc_output.f

ad_exe_target:
	@echo Update AD_CONFIG.h and make $(EXE_AD)
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Adjoint version" -bAD_CONFIG_H -DALLOW_ADJOINT_RUN -UALLOW_TANGENTLINEAR_RUN > ad_config.template
	@cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	@-rm -f ad_config.template
	$(MAKE) -f $(MAKEFILE) $(EXE_AD)

ad_input_code.f: $(AD_FILES) $(AD_FLOW_FILES)
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Adjoint version" -bAD_CONFIG_H -DALLOW_ADJOINT_RUN -UALLOW_TANGENTLINEAR_RUN > ad_config.template
	cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	@-rm -f ad_config.template
	@$(MAKE) -f $(MAKEFILE) $(F77_PP_SRC_FILES)
	@$(MAKE) -f $(MAKEFILE) $(FLOWFILES)
	cat $(FLOWFILES) $(AD_FILES) | sed -f $(TOOLSDIR)/remove_comments_sed > ad_input_code.f

adtafonly:
	$(TAF) $(AD_TAF_FLAGS) $(TAF_EXTRA) ad_input_code.f
	ls -l ad_input_code_ad.f
	cat ad_input_code_ad.f | sed -f $(TOOLSDIR)/adjoint_sed > ad_taf_output.f

# ... send 1 file to TAF ...
ad_taf_output.f: ad_input_code.f
	@-rm -f ad_input_code_ad.f ; echo ''
	$(TAF) $(AD_TAF_FLAGS) $(TAF_EXTRA) ad_input_code.f
	ls -l ad_input_code_ad.f
	cat ad_input_code_ad.f | sed -f $(TOOLSDIR)/adjoint_sed > ad_taf_output.f

$(EXE_AD): $(SPECIAL_FILES) $(H_SRC_FILES) ad_taf_output.o $(NON_AD_F77_SRC_FILES:.F=.o) $(F90_SRC_FILES:.F90=.o) $(C_SRC_FILES:.c=.o) $(EMBEDDED_FILES)
	$(LINK) -o ${EXE_AD} $(FFLAGS) $(FOPTIM) ad_taf_output.o $(NON_AD_F77_SRC_FILES:.F=.o) $(F90_SRC_FILES:.F90=.o) $(C_SRC_FILES:.c=.o) $(LIBS)

adobj: ad_taf_output.o $(NON_AD_F77_SRC_FILES:.F=.o) $(F90_SRC_FILES:.F90=.o) $(C_SRC_FILES:.c=.o)

adonlyfwd:
	patch < $(TOOLSDIR)/ad_taf_output.f.onlyfwd.diff

adtrick:
	patch < $(TOOLSDIR)/ad_taf_output.f.adtrick.diff

ad_tamc_output.f: ad_input_code.f
	$(TAMC) $(AD_TAMC_FLAGS) $(TAMC_EXTRA) ad_input_code.f
	cat ad_input_code_ad.f | sed -f $(TOOLSDIR)/adjoint_sed > ad_tamc_output.f

ad_tamc: ad_tamc_output.o $(OBJFILES)
	$(LINK) -o mitgcmuv_ad $(FFLAGS) $(FOPTIM) $(OBJFILES) ad_tamc_output.o $(LIBS)

# ... FTL ...
ftlall: ftl_exe_target
ftltaf: ftl_taf_output.f
ftltamc: ftl_tamc_output.f

ftl_exe_target:
	@echo Update AD_CONFIG.h and make $(EXE_FTL)
	@$(TOOLSDIR)/convert_cpp_cmd2defines "TangLin version" -bAD_CONFIG_H -UALLOW_ADJOINT_RUN -DALLOW_TANGENTLINEAR_RUN > ad_config.template
	@cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	@-rm -f ad_config.template
	$(MAKE) -f $(MAKEFILE) $(EXE_FTL)

ftl_input_code.f: $(AD_FILES)
	@$(TOOLSDIR)/convert_cpp_cmd2defines "TangLin version" -bAD_CONFIG_H -UALLOW_ADJOINT_RUN -DALLOW_TANGENTLINEAR_RUN > ad_config.template
	cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	@-rm -f ad_config.template
	@$(MAKE) -f $(MAKEFILE) $(F77_PP_SRC_FILES)
	@$(MAKE) -f $(MAKEFILE) $(AD_FLOW_FILES)
	cat $(AD_FLOW_FILES) $(AD_FILES) | sed -f $(TOOLSDIR)/remove_comments_sed > ftl_input_code.f

ftltafonly:
	$(TAF) $(FTL_TAF_FLAGS) $(TAF_EXTRA) ftl_input_code.f
	ls -l ftl_input_code_tl.f
	cat ftl_input_code_tl.f | sed -f $(TOOLSDIR)/adjoint_sed > ftl_taf_output.f

# ... send 1 file to TAF ...
ftl_taf_output.f: ftl_input_code.f
	@-rm -f ftl_input_code_tl.f ; echo ''
	$(TAF) $(FTL_TAF_FLAGS) $(TAF_EXTRA) ftl_input_code.f
	ls -l ftl_input_code_tl.f
	cat ftl_input_code_tl.f | sed -f $(TOOLSDIR)/adjoint_sed > ftl_taf_output.f

$(EXE_FTL): $(SPECIAL_FILES) $(H_SRC_FILES) ftl_taf_output.o $(NON_AD_F77_SRC_FILES:.F=.o) $(F90_SRC_FILES:.F90=.o) $(C_SRC_FILES:.c=.o) $(EMBEDDED_FILES)
	$(LINK) -o ${EXE_FTL} $(FFLAGS) $(FOPTIM) ftl_taf_output.o $(NON_AD_F77_SRC_FILES:.F=.o) $(F90_SRC_FILES:.F90=.o) $(C_SRC_FILES:.c=.o) $(LIBS)

ftl_tamc_output.f: ftl_input_code.f
	$(TAMC) $(FTL_TAMC_FLAGS) $(TAMC_EXTRA) ftl_input_code.f
	cat ftl_input_code_ftl.f | sed -f $(TOOLSDIR)/adjoint_sed > ftl_tamc_output.f

ftl_tamc: ftl_tamc_output.o $(OBJFILES)
	$(LINK) -o mitgcmuv_ftl $(FFLAGS) $(FOPTIM) $(OBJFILES) ftl_tamc_output.o $(LIBS)

# ... SVD ...
svdtaf: ad_taf_output.f ftl_taf_output.f
	@echo "--->>> Only ran TAF to generate SVD code!    <<<---"
	@echo "--->>> Do make svdall afterwards to compile. <<<---"
svdall: svd_touch svd_taf

svd_taf: $(OBJFILES)
	$(LINK) -o mitgcmuv_svd $(FFLAGS) $(FOPTIM) $(OBJFILES) ad_taf_output.o ftl_taf_output.o $(LIBS)

	@echo "--->>> Only COMPILE svd code! <<<---"
	@echo "--->>> Assumes you previously <<<---"
	@echo "--->>> did make svdtaf        <<<---"

svd_touch:
	@echo "--->>> Only COMPILE svd code! <<<---"
	@echo "--->>> Assumes you previously <<<---"
	@echo "--->>> did make svdtaf        <<<---"
	touch ad_taf_output.f ftl_taf_output.f
	$(FC) $(FFLAGS) $(FOPTIM) -c ad_taf_output.f
	$(FC) $(FFLAGS) $(FOPTIM) -c ftl_taf_output.f
	@$(TOOLSDIR)/convert_cpp_cmd2defines "SVD version" -bAD_CONFIG_H -UALLOW_ADJOINT_RUN -DALLOW_TANGENTLINEAR_RUN > ad_config.template
	cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	@-rm -f ad_config.template

# This section creates symbolic links


#  These files are linked from ../code/
 CPP_OPTIONS.h DIAGNOSTICS_SIZE.h EXF_OPTIONS.h GMREDI_OPTIONS.h KPP_OPTIONS.h OBCS_OPTIONS.h SIZE.h :
	if [ ! -L $@ ]; then $(LN) ../code//$@ $@; fi

#  These files are linked from ../../../pkg/cal
 cal_addtime.F cal_checkdate.F cal_compdates.F cal_convdate.F cal_copydate.F cal_daysformonth.F cal_dayspermonth.F cal_fulldate.F cal_getdate.F cal_getmonthsrec.F cal.h cal_init_fixed.F cal_intdays.F cal_intmonths.F cal_intyears.F cal_isleap.F cal_monthsforyear.F cal_monthsperyear.F cal_numints.F CAL_OPTIONS.h cal_printdate.F cal_printerror.F cal_readparms.F cal_set.F cal_stepsforday.F cal_stepsperday.F cal_subdates.F cal_summary.F cal_time2dump.F cal_timeinterval.F cal_timepassed.F cal_timestamp.F cal_toseconds.F cal_weekday.F :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/cal/$@ $@; fi

#  These files are linked from ../../../pkg/debug
 chksum_tiled.F debug_call.F debug_cs_corner_uv.F debug_enter.F debug_fld_stats_rl.F debug_fld_stats_rs.F debug_leave.F debug_msg.F DEBUG_OPTIONS.h debug_stats_rl.F debug_stats_rs.F fill_in_corners_rl.F write_fullarray_rl.F write_fullarray_rs.F debug_ad.flow :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/debug/$@ $@; fi

#  These files are linked from ../../../pkg/diagnostics
 diag_calc_psivel.F diag_cg2d.F diagnostics_addtolist.F DIAGNOSTICS_CALC.h diagnostics_calc_phivel.F diagnostics_check.F diagnostics_clear.F diagnostics_fill.F diagnostics_fill_field.F diagnostics_fill_rs.F diagnostics_fill_state.F diagnostics_fract_fill.F DIAGNOSTICS.h diagnostics_init_early.F diagnostics_init_fixed.F diagnostics_init_varia.F diagnostics_interp_p2p.F diagnostics_interp_vert.F diagnostics_is_on.F diagnostics_list_check.F diagnostics_main_init.F diagnostics_mnc_out.F diagnostics_out.F diagnostics_readparms.F diagnostics_read_pickup.F diagnostics_scale_fill.F diagnostics_scale_fill_rs.F diagnostics_set_calc.F diagnostics_setdiag.F diagnostics_set_levels.F diagnostics_set_pointers.F diagnostics_status_error.F diagnostics_sum_levels.F diagnostics_summary.F diagnostics_switch_onoff.F diagnostics_utils.F diagnostics_write.F diagnostics_write_pickup.F DIAG_OPTIONS.h diagstats_ascii_out.F diagstats_calc.F diagstats_clear.F diagstats_close_io.F diagstats_fill.F diagstats_global.F diagstats_ini_io.F diagstats_local.F diagstats_mnc_out.F diagstats_others_calc.F diagstats_output.F DIAGSTATS_REGIONS.h diagstats_setdiag.F diagstats_set_pointers.F diagstats_set_regions.F diag_vegtile_fill.F diagnostics_ad.flow :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/diagnostics/$@ $@; fi

#  These files are linked from ../../../pkg/exf
 exf_ad_check_lev1_dir.h exf_ad_check_lev2_dir.h exf_ad_check_lev3_dir.h exf_ad_check_lev4_dir.h exf_ad_dump.F exf_adjoint_snapshots_ad.F exf_adjoint_snapshots.F exf_adjoint_snapshots__g.F exf_bulkformulae.F exf_check.F exf_check_range.F EXF_CONSTANTS.h exf_diagnostics_fill.F exf_diagnostics_init.F EXF_FIELDS.h exf_filter_rl.F exf_getclim.F exf_getffieldrec.F exf_getffields.F exf_getfield_start.F exf_getforcing.F exf_getsurfacefluxes.F exf_getyearlyfieldname.F exf_init.F exf_init_fixed.F exf_interp.F exf_interpolate.F exf_interp_read.F exf_interp_uv.F exf_mapfields.F exf_monitor_ad.F exf_monitor.F EXF_PARAM.h exf_radiation.F exf_readparms.F exf_set_gen.F exf_set_obcs.F exf_set_uv.F exf_summary.F exf_swapffields.F exf_wind.F exf_zenithangle.F exf_zenithangle_table.F exf_ad.flow :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/exf/$@ $@; fi

#  These files are linked from ../../../pkg/generic_advdiff
 gad_ad_check_lev1_dir.h gad_ad_check_lev2_dir.h gad_ad_check_lev3_dir.h gad_ad_check_lev4_dir.h gad_advection.F gad_advscheme.F gad_biharm_r.F gad_biharm_x.F gad_biharm_y.F gad_c2_adv_r.F gad_c2_adv_x.F gad_c2_adv_y.F gad_c2_impl_r.F gad_c4_adv_r.F gad_c4_adv_x.F gad_c4_adv_y.F gad_calc_rhs.F gad_check.F gad_del2.F gad_diagnostics_init.F gad_diagnostics_state.F gad_diff_r.F gad_diff_x.F gad_diff_y.F gad_dst2u1_adv_r.F gad_dst2u1_adv_x.F gad_dst2u1_adv_y.F gad_dst2u1_impl_r.F gad_dst3_adv_r.F gad_dst3_adv_x.F gad_dst3_adv_y.F gad_dst3fl_adv_r.F gad_dst3fl_adv_x.F gad_dst3fl_adv_y.F gad_dst3fl_impl_r.F gad_exch_som.F gad_fluxlimit_adv_r.F gad_fluxlimit_adv_x.F gad_fluxlimit_adv_y.F GAD_FLUX_LIMITER.h gad_fluxlimit_impl_r.F gad_grad_x.F gad_grad_y.F GAD.h gad_implicit_r.F gad_init_fixed.F gad_init_varia.F GAD_OPTIONS.h gad_os7mp_adv_r.F gad_os7mp_adv_x.F gad_os7mp_adv_y.F gad_osc_hat_r.F gad_osc_hat_x.F gad_osc_hat_y.F gad_osc_mul_r.F gad_osc_mul_x.F gad_osc_mul_y.F gad_plm_fun.F gad_ppm_adv_r.F gad_ppm_adv_x.F gad_ppm_adv_y.F gad_ppm_flx_r.F gad_ppm_flx_x.F gad_ppm_flx_y.F gad_ppm_fun.F gad_ppm_hat_r.F gad_ppm_hat_x.F gad_ppm_hat_y.F gad_ppm_p3e_r.F gad_ppm_p3e_x.F gad_ppm_p3e_y.F gad_pqm_adv_r.F gad_pqm_adv_x.F gad_pqm_adv_y.F gad_pqm_flx_r.F gad_pqm_flx_x.F gad_pqm_flx_y.F gad_pqm_fun.F gad_pqm_hat_r.F gad_pqm_hat_x.F gad_pqm_hat_y.F gad_pqm_p5e_r.F gad_pqm_p5e_x.F gad_pqm_p5e_y.F gad_read_pickup.F gad_som_advect.F gad_som_adv_r.F gad_som_adv_x.F gad_som_adv_y.F gad_som_exchanges.F gad_som_fill_cs_corner.F gad_som_lim_r.F gad_som_prep_cs_corner.F GAD_SOM_VARS.h gad_u3_adv_r.F gad_u3_adv_x.F gad_u3_adv_y.F gad_u3c4_impl_r.F gad_write_pickup.F salt_fill.F :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/generic_advdiff/$@ $@; fi

#  These files are linked from ../../../pkg/gmredi
 gmredi_calc_diff.F gmredi_calc_eigs.F gmredi_calc_psi_b.F gmredi_calc_psi_bvp.F gmredi_calc_tensor.F gmredi_calc_urms.F gmredi_check.F gmredi_diagnostics_fill.F gmredi_diagnostics_impl.F gmredi_diagnostics_init.F gmredi_do_exch.F GMREDI.h gmredi_init_fixed.F gmredi_init_varia.F gmredi_k3d.F gmredi_mnc_init.F gmredi_output.F gmredi_readparms.F gmredi_read_pickup.F gmredi_residual_flow.F gmredi_rtransport.F gmredi_slope_limit.F gmredi_slope_psi.F GMREDI_TAVE.h gmredi_write_pickup.F gmredi_xtransport.F gmredi_ytransport.F submeso_calc_psi.F gmredi_ad.flow :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/gmredi/$@ $@; fi

#  These files are linked from ../../../pkg/kpp
 kpp_calc_diff_ptr.F kpp_calc_diff_s.F kpp_calc_diff_t.F kpp_calc.F kpp_calc_visc.F kpp_check.F kpp_diagnostics_init.F kpp_do_exch.F kpp_forcing_surf.F KPP.h kpp_init_fixed.F kpp_init_varia.F kpp_output.F KPP_PARAMS.h kpp_readparms.F kpp_routines.F KPP_TAVE.h kpp_transport_ptr.F kpp_transport_s.F kpp_transport_t.F :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/kpp/$@ $@; fi

#  These files are linked from ../../../pkg/mdsio
 MDSIO_BUFF_3D.h mdsio_buffertorl.F mdsio_buffertors.F MDSIO_BUFF_WH.h mdsio_check4file.F mdsio_facef_read.F mdsio_gl.F mdsio_gl_slice.F MDSIO_OPTIONS.h mdsio_pass_r4torl.F mdsio_pass_r4tors.F mdsio_pass_r8torl.F mdsio_pass_r8tors.F mdsio_rd_rec_rl.F mdsio_rd_rec_rs.F mdsio_read_field.F mdsio_read_meta.F mdsio_read_section.F mdsio_read_tape.F mdsio_readvec_loc.F mdsio_read_whalos.F mdsio_rw_field.F mdsio_rw_slice.F mdsio_seg4torl.F mdsio_seg4tors.F mdsio_seg8torl.F mdsio_seg8tors.F mdsio_segxtorx_2d.F mdsio_write_field.F mdsio_writelocal.F mdsio_write_meta.F mdsio_write_section.F mdsio_write_tape.F mdsio_writevec_loc.F mdsio_write_whalos.F mdsio_wr_metafiles.F mdsio_wr_rec_rl.F mdsio_wr_rec_rs.F mdsio_ad.flow :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/mdsio/$@ $@; fi

#  These files are linked from ../../../pkg/mom_common
 mom_calc_3d_strain.F mom_calc_absvort3.F mom_calc_hdiv.F mom_calc_hfacz.F mom_calc_ke.F mom_calc_relvort3.F mom_calc_smag_3d.F mom_calc_strain.F mom_calc_tension.F mom_calc_visc.F MOM_COMMON_OPTIONS.h mom_diagnostics_init.F mom_hdissip.F mom_init_fixed.F mom_quasihydrostatic.F mom_u_bottomdrag.F mom_u_coriolis_nh.F mom_u_implicit_r.F mom_u_metric_nh.F mom_u_rviscflux.F mom_u_sidedrag.F mom_uv_smag_3d.F mom_v_bottomdrag.F mom_v_coriolis_nh.F mom_v_implicit_r.F MOM_VISC.h mom_v_metric_nh.F mom_v_rviscflux.F mom_v_sidedrag.F mom_w_coriolis_nh.F mom_w_metric_nh.F mom_w_sidedrag.F mom_w_smag_3d.F :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/mom_common/$@ $@; fi

#  These files are linked from ../../../pkg/mom_fluxform
 mom_calc_rtrans.F mom_fluxform.F MOM_FLUXFORM.h MOM_FLUXFORM_OPTIONS.h mom_u_adv_uu.F mom_u_adv_vu.F mom_u_adv_wu.F mom_u_coriolis.F mom_u_del2u.F mom_u_metric_cylinder.F mom_u_metric_sphere.F mom_uv_boundary.F mom_u_xviscflux.F mom_u_yviscflux.F mom_v_adv_uv.F mom_v_adv_vv.F mom_v_adv_wv.F mom_v_coriolis.F mom_v_del2v.F mom_v_metric_cylinder.F mom_v_metric_sphere.F mom_v_xviscflux.F mom_v_yviscflux.F :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/mom_fluxform/$@ $@; fi

#  These files are linked from ../../../pkg/mom_vecinv
 mom_vecinv.F MOM_VECINV_OPTIONS.h mom_vi_coriolis.F mom_vi_del2uv.F mom_vi_hdissip.F mom_vi_u_coriolis_c4.F mom_vi_u_coriolis.F mom_vi_u_grad_ke.F mom_vi_u_vertshear.F mom_vi_v_coriolis_c4.F mom_vi_v_coriolis.F mom_vi_v_grad_ke.F mom_vi_v_vertshear.F :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/mom_vecinv/$@ $@; fi

#  These files are linked from ../../../pkg/monitor
 mon_advcfl.F mon_advcflw2.F mon_advcflw.F mon_calc_advcfl.F mon_calc_stats_rl.F mon_calc_stats_rs.F mon_init.F monitor_ad.F monitor.F monitor_g.F MONITOR.h MONITOR_OPTIONS.h mon_ke.F mon_out.F mon_printstats_rl.F mon_printstats_rs.F mon_set_iounit.F mon_set_pref.F mon_solution.F mon_stats_latbnd_rl.F mon_stats_rl.F mon_stats_rs.F mon_surfcor.F mon_vort3.F mon_writestats_rl.F mon_writestats_rs.F monitor_ad.flow :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/monitor/$@ $@; fi

#  These files are linked from ../../../pkg/obcs
 obcs_ad_check_lev1_dir.h obcs_ad_check_lev2_dir.h obcs_ad_check_lev3_dir.h obcs_ad_check_lev4_dir.h obcs_add_tides.F obcs_adjust_uvice.F obcs_apply_eta.F obcs_apply_ptracer.F obcs_apply_r_star.F obcs_apply_seaice.F obcs_apply_surf_dr.F obcs_apply_ts.F obcs_apply_uv.F obcs_apply_uvice.F obcs_apply_w.F obcs_balance_flow.F obcs_calc.F obcs_calc_stevens.F obcs_check_depths.F obcs_check.F obcs_copy_tracer.F obcs_copy_uv_n.F obcs_diag_balance.F obcs_exchanges.F obcs_exf_load.F OBCS_FIELDS.h obcs_fields_load.F OBCS_GRID.h obcs_init_fixed.F obcs_init_variables.F obcs_monitor.F obcs_mon_stats.F obcs_output.F OBCS_PARAMS.h obcs_prescribe_read.F OBCS_PTRACERS.h obcs_readparms.F obcs_read_pickup.F obcs_save_uv_n.F OBCS_SEAICE.h obcs_seaice_sponge.F obcs_set_connect.F obcs_sponge.F obcs_u1_adv_tracer.F obcs_write_pickup.F orlanski_east.F ORLANSKI.h orlanski_init.F orlanski_north.F orlanski_south.F orlanski_west.F obcs_ad.flow :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/obcs/$@ $@; fi

#  These files are linked from ../../../pkg/rw
 get_write_global_fld.F read_fld_xy_rl.F read_fld_xy_rs.F read_fld_xyz_rl.F read_fld_xyz_rs.F read_glvec_rl.F read_glvec_rs.F read_mflds.F read_rec.F RW_MFLDS.h RW_OPTIONS.h set_write_global_fld.F write_fld_3d_rl.F write_fld_3d_rs.F write_fld_s3d_rl.F write_fld_s3d_rs.F write_fld_xy_rl.F write_fld_xy_rs.F write_fld_xyz_rl.F write_fld_xyz_rs.F write_glvec_rl.F write_glvec_rs.F write_local_rl.F write_local_rs.F write_rec.F rw_ad.flow :
	if [ ! -L $@ ]; then $(LN) ../../../pkg/rw/$@ $@; fi

#  These files are linked from ../../../eesupp/src
 all_proc_die.F bar2.F bar_check.F barrier.F check_threads.F comm_stats.F cumulsum_z_tile.F different_multiple.F diff_phase_multiple.F eeboot.F eeboot_minimal.F eedata_example.F eedie.F eeintro_msg.F eeset_parms.F eewrite_eeenv.F exch0_r4.F exch0_r8.F exch0_rl.F exch0_rs.F exch1_bg_r4_cube.F exch1_bg_r8_cube.F exch1_bg_rl_cube.F exch1_bg_rs_cube.F exch1_r4_cube.F exch1_r4.F exch1_r8_cube.F exch1_r8.F exch1_rl_ad.F exch1_rl_cube_ad.F exch1_rl_cube.F exch1_rl.F exch1_rs_ad.F exch1_rs_cube_ad.F exch1_rs_cube.F exch1_rs.F exch1_uv_r4_cube.F exch1_uv_r8_cube.F exch1_uv_rl_cube.F exch1_uv_rs_cube.F exch1_z_r4_cube.F exch1_z_r8_cube.F exch1_z_rl_cube.F exch1_z_rs_cube.F exch_3d_r4.F exch_3d_r8.F exch_3d_rl.F exch_3d_rs.F exch_cycle_ebl.F exch_init.F exch_r4_recv_get_x.F exch_r4_recv_get_y.F exch_r4_send_put_x.F exch_r4_send_put_y.F exch_r8_recv_get_x.F exch_r8_recv_get_y.F exch_r8_send_put_x.F exch_r8_send_put_y.F exch_rl_recv_get_x.F exch_rl_recv_get_y.F exch_rl_send_put_x.F exch_rl_send_put_y.F exch_rs_recv_get_x.F exch_rs_recv_get_y.F exch_rs_send_put_x.F exch_rs_send_put_y.F exch_s3d_r4.F exch_s3d_r8.F exch_s3d_rl.F exch_s3d_rs.F exch_sm_3d_r4.F exch_sm_3d_r8.F exch_sm_3d_rl.F exch_sm_3d_rs.F exch_uv_3d_r4.F exch_uv_3d_r8.F exch_uv_3d_rl.F exch_uv_3d_rs.F exch_uv_agrid_3d_r4.F exch_uv_agrid_3d_r8.F exch_uv_agrid_3d_rl.F exch_uv_agrid_3d_rs.F exch_uv_bgrid_3d_r4.F exch_uv_bgrid_3d_r8.F exch_uv_bgrid_3d_rl.F exch_uv_bgrid_3d_rs.F exch_uv_dgrid_3d_r4.F exch_uv_dgrid_3d_r8.F exch_uv_dgrid_3d_rl.F exch_uv_dgrid_3d_rs.F exch_uv_xy_r4.F exch_uv_xy_r8.F exch_uv_xy_rl.F exch_uv_xy_rs.F exch_uv_xyz_r4.F exch_uv_xyz_r8.F exch_uv_xyz_rl.F exch_uv_xyz_rs.F exch_xy_r4.F exch_xy_r8.F exch_xy_rl.F exch_xy_rs.F exch_xyz_r4.F exch_xyz_r8.F exch_xyz_rl.F exch_xyz_rs.F exch_z_3d_r4.F exch_z_3d_r8.F exch_z_3d_rl.F exch_z_3d_rs.F fill_cs_corner_ag_rl.F fill_cs_corner_tr_rl.F fill_cs_corner_uv_rl.F fill_cs_corner_uv_rs.F fool_the_compiler.F gather_2d_r4.F gather_2d_r8.F gather_2d_wh_r4.F gather_2d_wh_r8.F gather_vec_r4.F gather_vec_r8.F gather_xz.F gather_yz.F get_periodic_interval.F global_max.F global_sum.F global_sum_singlecpu.F global_sum_tile.F global_vec_sum.F gsl_ieee_env.c gsum.F ini_communication_patterns.F ini_procs.F ini_threading_environment.F lef_zero.F main.F master_cpu_io.F master_cpu_thread.F mds_byteswapi4.F mds_byteswapr4.F mds_byteswapr8.F mdsfindunit.F mds_flush.F mds_reclen.F memsync.F nml_change_syntax.F nml_set_terminator.F open_copy_data_file.F print.F ptwrapper.c reset_halo.F scatter_2d_r4.F scatter_2d_r8.F scatter_2d_wh_r4.F scatter_2d_wh_r8.F scatter_vec_r4.F scatter_vec_r8.F scatter_xz.F scatter_yz.F setdir.c setrlstk.c sigreg.c stop_if_error.F tim.c timers.F timer_stats.c utils.F write_utils.F eesupp.flow exch1_ad.flow :
	if [ ! -L $@ ]; then $(LN) ../../../eesupp/src/$@ $@; fi

#  These files are linked from ../../../model/src
 adams_bashforth2.F adams_bashforth3.F add_walls2masks.F apply_forcing.F calc_3d_diffusivity.F calc_adv_flow.F calc_div_ghat.F calc_eddy_stress.F calc_grad_phi_fv.F calc_grad_phi_hyd.F calc_grad_phi_surf.F calc_grid_angles.F calc_gw.F calc_ivdc.F calc_oce_mxlayer.F calc_phi_hyd.F calc_r_star.F calc_surf_dr.F calc_viscosity.F calc_wsurf_tr.F cg2d_ex0.F cg2d.F cg2d_nsa.F cg2d_sr.F cg3d_ex0.F cg3d.F check_pickup.F config_check.F config_summary.F convective_adjustment.F convective_adjustment_ini.F convectively_mixtracer.F convective_weights.F correction_step.F cycle_ab_tracer.F cycle_tracer.F diags_oceanic_surf_flux.F diags_phi_hyd.F diags_phi_rlow.F diags_rho.F do_atmospheric_phys.F do_fields_blocking_exchanges.F do_oceanic_phys.F do_stagger_fields_exchanges.F do_statevars_diags.F do_statevars_tave.F do_the_model_io.F do_write_pickup.F dynamics.F external_fields_load.F external_forcing.F external_forcing_surf.F find_alpha.F find_hyd_press_1d.F find_rho.F forcing_surf_relax.F forward_step.F freesurf_rescale_g.F freeze_surface.F grad_sigma.F gsw_teos10.F impldiff.F ini_cartesian_grid.F ini_cg2d.F ini_cg3d.F ini_cori.F ini_curvilinear_grid.F ini_cylinder_grid.F ini_depths.F ini_dynvars.F ini_eos.F ini_ffields.F ini_fields.F ini_forcing.F ini_global_domain.F ini_grid.F ini_linear_phisurf.F ini_local_grid.F ini_masks_etc.F ini_mixing.F ini_mnc_vars.F ini_model_io.F ini_nh_fields.F ini_nh_vars.F ini_nlfs_vars.F ini_parms.F ini_p_ground.F ini_pressure.F ini_psurf.F ini_salt.F ini_sigma_hfac.F ini_spherical_polar_grid.F ini_theta.F initialise_fixed.F initialise_varia.F ini_vel.F ini_vertical_grid.F integrate_for_w.F integr_continuity.F load_fields_driver.F load_grid_spacing.F load_ref_files.F main_do_loop.F momentum_correction_step.F packages_boot.F packages_check.F packages_error_msg.F packages_init_fixed.F packages_init_variables.F packages_print_msg.F packages_readparms.F packages_unused_msg.F packages_write_pickup.F plot_field.F port_rand.F post_cg3d.F pre_cg3d.F pressure_for_eos.F read_pickup.F remove_mean.F reset_nlfs_vars.F rotate_spherical_polar_grid.F rotate_uv2en.F salt_integrate.F seawater.F set_defaults.F set_grid_factors.F set_parms.F set_ref_state.F solve_for_pressure.F solve_pentadiagonal.F solve_tridiagonal.F solve_uv_tridiago.F state_summary.F swfrac.F taueddy_init_varia.F taueddy_tendency_apply.F temp_integrate.F the_main_loop.F the_model_main.F thermodynamics.F timestep.F timestep_tracer.F timestep_wvel.F tracers_correction_step.F tracers_iigw_correction.F turnoff_model_io.F update_cg2d.F update_etah.F update_etaws.F update_masks_etc.F update_r_star.F update_sigma.F update_surf_dr.F write_grid.F write_pickup.F write_state.F :
	if [ ! -L $@ ]; then $(LN) ../../../model/src/$@ $@; fi

#  These files are linked from /usr/include
 aio.h aliases.h alloca.h ansidecl.h a.out.h argp.h argz.h ar.h assert.h auparse-defs.h auparse.h autosprintf.h autotest.h bfd.h bfdlink.h byteswap.h bzlib.h canberra-gtk.h canberra.h cap-ng.h check.h complex.h cpio.h crypt.h ctype.h cursesapp.h cursesf.h curses.h cursesm.h cursesp.h cursesw.h cursslk.h db_185.h db_cxx.h db.h dejagnu.h dirent.h dis-asm.h dlfcn.h dwarf.h ecpg_config.h ecpg_config_x86_64.h ecpgerrno.h ecpg_informix.h ecpglib.h ecpgtype.h elf.h endian.h envz.h err.h errno.h error.h eti.h etip.h execinfo.h expat_external.h expat.h f77papi.h f90papi.h fam.h fcntl.h features.h fenv.h fftw3.h FlexLexer.h fmtmsg.h fnmatch.h form.h fpapi.h fpu_control.h fstab.h ft2build.h fts.h ftw.h fuse.h _G_config.h gconv.h gcrypt.h gcrypt-module.h gdbm.h gelf.h getopt.h gettext-po.h glob.h gmp.h gmp-mparam.h gmp-mparam-x86_64.h gmp-x86_64.h gmpxx.h gnu-versions.h gpg-error.h grp.h gshadow.h gssapi.h hugetlbfs.h ical.h iconv.h idna.h idn-free.h idn-int.h ieee1284.h ieee754.h ifaddrs.h inttypes.h ip6tables.h iptables.h jconfig.h jerror.h jmorecfg.h jpeglib.h kdb.h keyutils.h krb5.h langinfo.h lastlog.h lber.h lber_types.h ldap_cdefs.h ldap_features.h ldap.h ldap_schema.h ldap_utf8.h ldif.h libaio.h libaudit.h libcgroup.h libelf.h libgen.h libiberty.h libintl.h libio.h libipq.h libmng_conf.h libmng.h libmng_types.h libpq-events.h libpq-fe.h libtasn1.h libudev.h limits.h link.h locale.h lzma.h magic.h malloc.h math.h mcheck.h memory.h menu.h mntent.h monetary.h mpf2mpfr.h mpfr.h mp.h mqueue.h nc_tparm.h ncurses_dll.h ncurses.h netapi.h netdb.h nlist.h nl_types.h nss.h numacompat1.h numa.h numaif.h obstack.h odbcinstext.h odbcinst.h panel.h papi.h papiStdEventDefs.h paths.h pcrecpparg.h pcrecpp.h pcre.h pcreposix.h pcre_scanner.h pcre_stringpiece.h pg_config.h pg_config_manual.h pg_config_os.h pg_config_x86_64.h pgtypes_date.h pgtypes_error.h pgtypes_interval.h pgtypes_numeric.h pgtypes_timestamp.h pngconf.h png.h poll.h popt.h postgres_ext.h pr29.h printf.h profile.h psm.h psm_mq.h pthread.h pty.h punycode.h pwd.h re_comp.h regex.h regexp.h resolv.h sched.h search.h semaphore.h setjmp.h sgtty.h shadow.h signal.h slapi-plugin.h snappy-c.h snappy.h snappy-sinksource.h snappy-stubs-public.h spawn.h sql3types.h sqlca.h sqlext.h sql.h sqlite3ext.h sqlite3.h sqltypes.h sqlucode.h stab.h stdint.h stdio_ext.h stdio.h stdlib.h string.h stringprep.h strings.h symcat.h syscall.h sysexits.h syslog.h tar.h tclDecls.h tcl.h tclPlatDecls.h tclTomMathDecls.h tclTomMath.h tcpd.h termcap.h term_entry.h term.h termio.h termios.h tgmath.h thread_db.h tic.h tiffconf-64.h tiffconf.h tiff.h tiffio.h tiffvers.h time.h tkDecls.h tk.h tkPlatDecls.h tld.h topology.h ttyent.h ucontext.h ulimit.h ulockmgr.h unctrl.h unistd.h unixodbc_conf.h unixodbc_conf_x86_64.h uodbc_extras.h uodbc_stats.h usb.h usbpp.h ustat.h utime.h utmp.h utmpx.h values.h verto.h verto-module.h wait.h wchar.h wctype.h wordexp.h xf86drm.h xf86drmMode.h xlocale.h xtables.h zconf.h zlib.h :
	if [ ! -L $@ ]; then $(LN) /usr/include/$@ $@; fi

#  These files are linked from ../../../eesupp/inc
 BAR2.h BARRIER.h CPP_EEMACROS.h CPP_EEOPTIONS.h CUMULSUM.h DEF_IN_MAKEFILE.h EEBUFF_SCPU.h EEPARAMS.h EESUPPORT.h EXCH.h GLOBAL_MAX.h GLOBAL_SUM.h MAIN_PDIRECTIVES1.h MAIN_PDIRECTIVES2.h MPI_INFO.h SIGREG.h :
	if [ ! -L $@ ]; then $(LN) ../../../eesupp/inc/$@ $@; fi

#  These files are linked from ../../../model/inc
 CG2D.h CG3D.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EOS.h FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h NH_VARS.h PARAMS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h RESTART.h SET_GRID.h SOLVE_FOR_PRESSURE3D.h SOLVE_FOR_PRESSURE.h SURFACE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h THE_MODEL_COMMON_BLOCKS.h XC_MACROS.h YC_MACROS.h :
	if [ ! -L $@ ]; then $(LN) ../../../model/inc/$@ $@; fi


# DO NOT DELETE
