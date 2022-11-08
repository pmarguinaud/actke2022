include Makefile.inc

abor1.intfb.ok: abor1.intfb.h 
	touch abor1.intfb.ok

acbl89.intfb.ok: acbl89.intfb.h parkind1.o yomhook.o yomcst.o yomphy.o yomphy0.o
	touch acbl89.intfb.ok

acevolet.intfb.ok: acevolet.intfb.h model_physics_mf_mod.o parkind1.o yomhook.o yomcst.o
	touch acevolet.intfb.ok

aclender.intfb.ok: aclender.intfb.h parkind1.o yomhook.o yomcst.o yomphy.o yomphy0.o
	touch aclender.intfb.ok

actke.intfb.ok: actke.intfb.h model_physics_mf_mod.o yommddh.o parkind1.o yomhook.o yomcst.o yomlsforc.o yomlddh.o ddh_mix.o
	touch actke.intfb.ok

acturb.intfb.ok: acturb.intfb.h parkind1.o yomhook.o yomcst.o yomphy0.o yomphy.o yomlsforc.o
	touch acturb.intfb.ok

ddh_mix.intfb.ok: ddh_mix.intfb.h parkind1.o yomhook.o yomlun_ifsaux.o
	touch ddh_mix.intfb.ok

fl2hl.intfb.ok: fl2hl.intfb.h parkind1.o yomhook.o
	touch fl2hl.intfb.ok

hl2fl.intfb.ok: hl2fl.intfb.h parkind1.o yomhook.o
	touch hl2fl.intfb.ok

posnam.intfb.ok: posnam.intfb.h parkind1.o yomhook.o
	touch posnam.intfb.ok

posname.intfb.ok: posname.intfb.h parkind1.o yomhook.o
	touch posname.intfb.ok

fcttrm.func.ok: fcttrm.func.h
	touch fcttrm.func.ok
abor1.o: abor1.F90 
	$(FC) -c abor1.F90

acbl89.o: acbl89.F90 parkind1.o yomhook.o yomcst.o yomphy.o yomphy0.o
	$(FC) -c acbl89.F90

acevolet.o: acevolet.F90 model_physics_mf_mod.o parkind1.o yomhook.o yomcst.o
	$(FC) -c acevolet.F90

aclender.o: aclender.F90 parkind1.o yomhook.o yomcst.o yomphy.o yomphy0.o fcttrm.func.ok
	$(FC) -c aclender.F90

actke.o: actke.F90 model_physics_mf_mod.o yommddh.o parkind1.o yomhook.o yomcst.o yomlsforc.o yomlddh.o ddh_mix.o acbl89.intfb.ok acturb.intfb.ok acevolet.intfb.ok hl2fl.intfb.ok fl2hl.intfb.ok aclender.intfb.ok
	$(FC) -c actke.F90

acturb.o: acturb.F90 parkind1.o yomhook.o yomcst.o yomphy0.o yomphy.o yomlsforc.o fcttrm.func.ok
	$(FC) -c acturb.F90

check_utils_mod.o: check_utils_mod.F90 parkind1.o
	$(FC) -c check_utils_mod.F90

ddh_mix.o: ddh_mix.F90 parkind1.o yomhook.o yomlun_ifsaux.o yomlddh.o yomlddh.o yommddh.o yommddh.o yommddh.o yommddh.o yomtddh.o yommddh.o yomtddh.o abor1.intfb.ok abor1.intfb.ok
	$(FC) -c ddh_mix.F90

eint_mod.o: eint_mod.F90 parkind1.o yomhook.o yomhook.o yomlun.o yomhook.o yomlun.o yomlun.o yommp0.o abor1.intfb.ok
	$(FC) -c eint_mod.F90

fl2hl.o: fl2hl.F90 parkind1.o yomhook.o
	$(FC) -c fl2hl.F90

getdata_mod.o: getdata_mod.F90 parkind1.o
	$(FC) -c getdata_mod.F90

hl2fl.o: hl2fl.F90 parkind1.o yomhook.o
	$(FC) -c hl2fl.F90

model_physics_mf_mod.o: model_physics_mf_mod.F90 yomphy.o yomphy0.o yomphy1.o yomphy2.o yomphy3.o yomphyds.o yomcvmnh.o yomtoph.o yomvdoz.o yomsimphl.o yomarphy.o yomparar.o yommse.o yomlouis.o yomnorgwd.o eint_mod.o parkind1.o
	$(FC) -c model_physics_mf_mod.F90

parkind1.o: parkind1.F90 
	$(FC) -c parkind1.F90

posnam.o: posnam.F90 parkind1.o yomhook.o abor1.intfb.ok posname.intfb.ok
	$(FC) -c posnam.F90

posname.o: posname.F90 parkind1.o yomhook.o abor1.intfb.ok
	$(FC) -c posname.F90

util_model_physics_mf_type_mod.o: util_model_physics_mf_type_mod.F90 model_physics_mf_mod.o util_sl_struct_mod.o util_tarphy_mod.o util_tcvmnh_mod.o util_tlouis_mod.o util_tmse_mod.o util_tnorgwd_mod.o util_tparar_mod.o util_tphy_mod.o util_tphy0_mod.o util_tphy1_mod.o util_tphy2_mod.o util_tphy3_mod.o util_tphyds_mod.o util_tsimphl_mod.o util_ttoph_mod.o util_tvdoz_mod.o util_sl_struct_mod.o util_tarphy_mod.o util_tcvmnh_mod.o util_tlouis_mod.o util_tmse_mod.o util_tnorgwd_mod.o util_tparar_mod.o util_tphy_mod.o util_tphy0_mod.o util_tphy1_mod.o util_tphy2_mod.o util_tphy3_mod.o util_tphyds_mod.o util_tsimphl_mod.o util_ttoph_mod.o util_tvdoz_mod.o util_sl_struct_mod.o util_tarphy_mod.o util_tcvmnh_mod.o util_tlouis_mod.o util_tmse_mod.o util_tnorgwd_mod.o util_tparar_mod.o util_tphy_mod.o util_tphy0_mod.o util_tphy1_mod.o util_tphy2_mod.o util_tphy3_mod.o util_tphyds_mod.o util_tsimphl_mod.o util_ttoph_mod.o util_tvdoz_mod.o util_sl_struct_mod.o util_tarphy_mod.o util_tcvmnh_mod.o util_tlouis_mod.o util_tmse_mod.o util_tnorgwd_mod.o util_tparar_mod.o util_tphy_mod.o util_tphy0_mod.o util_tphy1_mod.o util_tphy2_mod.o util_tphy3_mod.o util_tphyds_mod.o util_tsimphl_mod.o util_ttoph_mod.o util_tvdoz_mod.o
	$(FC) -c util_model_physics_mf_type_mod.F90

util_sl_struct_mod.o: util_sl_struct_mod.F90 eint_mod.o
	$(FC) -c util_sl_struct_mod.F90

util_tarphy_mod.o: util_tarphy_mod.F90 yomarphy.o
	$(FC) -c util_tarphy_mod.F90

util_tcst_mod.o: util_tcst_mod.F90 yomcst.o
	$(FC) -c util_tcst_mod.F90

util_tcvmnh_mod.o: util_tcvmnh_mod.F90 yomcvmnh.o
	$(FC) -c util_tcvmnh_mod.F90

util_tdprecips_mod.o: util_tdprecips_mod.F90 yomdprecips.o
	$(FC) -c util_tdprecips_mod.F90

util_tdvisi_mod.o: util_tdvisi_mod.F90 yomdvisi.o
	$(FC) -c util_tdvisi_mod.F90

util_tlouis_mod.o: util_tlouis_mod.F90 yomlouis.o
	$(FC) -c util_tlouis_mod.F90

util_tmse_mod.o: util_tmse_mod.F90 yommse.o
	$(FC) -c util_tmse_mod.F90

util_tnorgwd_mod.o: util_tnorgwd_mod.F90 yomnorgwd.o
	$(FC) -c util_tnorgwd_mod.F90

util_tparar_mod.o: util_tparar_mod.F90 yomparar.o
	$(FC) -c util_tparar_mod.F90

util_tphy0_mod.o: util_tphy0_mod.F90 yomphy0.o
	$(FC) -c util_tphy0_mod.F90

util_tphy1_mod.o: util_tphy1_mod.F90 yomphy1.o
	$(FC) -c util_tphy1_mod.F90

util_tphy2_mod.o: util_tphy2_mod.F90 yomphy2.o
	$(FC) -c util_tphy2_mod.F90

util_tphy3_mod.o: util_tphy3_mod.F90 yomphy3.o
	$(FC) -c util_tphy3_mod.F90

util_tphy_mod.o: util_tphy_mod.F90 yomphy.o util_tdprecips_mod.o util_tdvisi_mod.o util_tdprecips_mod.o util_tdvisi_mod.o util_tdprecips_mod.o util_tdvisi_mod.o util_tdprecips_mod.o util_tdvisi_mod.o
	$(FC) -c util_tphy_mod.F90

util_tphyds_mod.o: util_tphyds_mod.F90 yomphyds.o
	$(FC) -c util_tphyds_mod.F90

util_tsimphl_mod.o: util_tsimphl_mod.F90 yomsimphl.o
	$(FC) -c util_tsimphl_mod.F90

util_ttoph_mod.o: util_ttoph_mod.F90 yomtoph.o
	$(FC) -c util_ttoph_mod.F90

util_tvdoz_mod.o: util_tvdoz_mod.F90 yomvdoz.o
	$(FC) -c util_tvdoz_mod.F90

wrap_actke.o: wrap_actke.F90 model_physics_mf_mod.o yommddh.o parkind1.o yomhook.o yomct3.o yommp0.o yomcst.o yomlsforc.o yomlddh.o ddh_mix.o util_tcst_mod.o util_model_physics_mf_type_mod.o getdata_mod.o check_utils_mod.o xrd_getoptions.o actke.intfb.ok
	$(FC) -c wrap_actke.F90

xrd_getoptions.o: xrd_getoptions.F90 parkind1.o xrd_unix_env.o
	$(FC) -c xrd_getoptions.F90

xrd_unix_env.o: xrd_unix_env.F90 parkind1.o
	$(FC) -c xrd_unix_env.F90

yomarphy.o: yomarphy.F90 parkind1.o
	$(FC) -c yomarphy.F90

yomcst.o: yomcst.F90 parkind1.o parkind1.o yomhook.o parkind1.o yomhook.o yomlun.o yomdyncore.o parkind1.o yomhook.o posnam.intfb.ok abor1.intfb.ok fcttrm.func.ok
	$(FC) -c yomcst.F90

yomct3.o: yomct3.F90 parkind1.o
	$(FC) -c yomct3.F90

yomcvmnh.o: yomcvmnh.F90 parkind1.o
	$(FC) -c yomcvmnh.F90

yomdprecips.o: yomdprecips.F90 parkind1.o
	$(FC) -c yomdprecips.F90

yomdvisi.o: yomdvisi.F90 parkind1.o
	$(FC) -c yomdvisi.F90

yomdyncore.o: yomdyncore.F90 parkind1.o
	$(FC) -c yomdyncore.F90

yomhook.o: yomhook.F90 parkind1.o
	$(FC) -c yomhook.F90

yomlddh.o: yomlddh.F90 
	$(FC) -c yomlddh.F90

yomlouis.o: yomlouis.F90 parkind1.o
	$(FC) -c yomlouis.F90

yomlsforc.o: yomlsforc.F90 parkind1.o
	$(FC) -c yomlsforc.F90

yomlun.o: yomlun.F90 parkind1.o yomlun_ifsaux.o yomhook.o parkind1.o yomhook.o parkind1.o yomhook.o parkind1.o
	$(FC) -c yomlun.F90

yomlun_ifsaux.o: yomlun_ifsaux.F90 parkind1.o
	$(FC) -c yomlun_ifsaux.F90

yommddh.o: yommddh.F90 parkind1.o
	$(FC) -c yommddh.F90

yommp0.o: yommp0.F90 parkind1.o
	$(FC) -c yommp0.F90

yommse.o: yommse.F90 parkind1.o
	$(FC) -c yommse.F90

yomnorgwd.o: yomnorgwd.F90 parkind1.o
	$(FC) -c yomnorgwd.F90

yomparar.o: yomparar.F90 parkind1.o
	$(FC) -c yomparar.F90

yomphy.o: yomphy.F90 parkind1.o yomdprecips.o yomdvisi.o
	$(FC) -c yomphy.F90

yomphy0.o: yomphy0.F90 parkind1.o
	$(FC) -c yomphy0.F90

yomphy1.o: yomphy1.F90 parkind1.o
	$(FC) -c yomphy1.F90

yomphy2.o: yomphy2.F90 parkind1.o
	$(FC) -c yomphy2.F90

yomphy3.o: yomphy3.F90 parkind1.o
	$(FC) -c yomphy3.F90

yomphyds.o: yomphyds.F90 parkind1.o
	$(FC) -c yomphyds.F90

yomsimphl.o: yomsimphl.F90 parkind1.o
	$(FC) -c yomsimphl.F90

yomtddh.o: yomtddh.F90 parkind1.o
	$(FC) -c yomtddh.F90

yomtoph.o: yomtoph.F90 parkind1.o
	$(FC) -c yomtoph.F90

yomvdoz.o: yomvdoz.F90 parkind1.o
	$(FC) -c yomvdoz.F90

wrap_actke.x: wrap_actke.o abor1.o acbl89.o acevolet.o aclender.o actke.o acturb.o check_utils_mod.o ddh_mix.o eint_mod.o fl2hl.o getdata_mod.o hl2fl.o model_physics_mf_mod.o parkind1.o posnam.o posname.o util_model_physics_mf_type_mod.o util_sl_struct_mod.o util_tarphy_mod.o util_tcst_mod.o util_tcvmnh_mod.o util_tdprecips_mod.o util_tdvisi_mod.o util_tlouis_mod.o util_tmse_mod.o util_tnorgwd_mod.o util_tparar_mod.o util_tphy0_mod.o util_tphy1_mod.o util_tphy2_mod.o util_tphy3_mod.o util_tphy_mod.o util_tphyds_mod.o util_tsimphl_mod.o util_ttoph_mod.o util_tvdoz_mod.o xrd_getoptions.o xrd_unix_env.o yomarphy.o yomcst.o yomct3.o yomcvmnh.o yomdprecips.o yomdvisi.o yomdyncore.o yomhook.o yomlddh.o yomlouis.o yomlsforc.o yomlun.o yomlun_ifsaux.o yommddh.o yommp0.o yommse.o yomnorgwd.o yomparar.o yomphy.o yomphy0.o yomphy1.o yomphy2.o yomphy3.o yomphyds.o yomsimphl.o yomtddh.o yomtoph.o yomvdoz.o
	$(FC) -o wrap_actke.x wrap_actke.o abor1.o acbl89.o acevolet.o aclender.o actke.o acturb.o check_utils_mod.o ddh_mix.o eint_mod.o fl2hl.o getdata_mod.o hl2fl.o model_physics_mf_mod.o parkind1.o posnam.o posname.o util_model_physics_mf_type_mod.o util_sl_struct_mod.o util_tarphy_mod.o util_tcst_mod.o util_tcvmnh_mod.o util_tdprecips_mod.o util_tdvisi_mod.o util_tlouis_mod.o util_tmse_mod.o util_tnorgwd_mod.o util_tparar_mod.o util_tphy0_mod.o util_tphy1_mod.o util_tphy2_mod.o util_tphy3_mod.o util_tphy_mod.o util_tphyds_mod.o util_tsimphl_mod.o util_ttoph_mod.o util_tvdoz_mod.o xrd_getoptions.o xrd_unix_env.o yomarphy.o yomcst.o yomct3.o yomcvmnh.o yomdprecips.o yomdvisi.o yomdyncore.o yomhook.o yomlddh.o yomlouis.o yomlsforc.o yomlun.o yomlun_ifsaux.o yommddh.o yommp0.o yommse.o yomnorgwd.o yomparar.o yomphy.o yomphy0.o yomphy1.o yomphy2.o yomphy3.o yomphyds.o yomsimphl.o yomtddh.o yomtoph.o yomvdoz.o $(LIBS)


subclean:
	\rm -f abor1.o acbl89.o acevolet.o aclender.o actke.o acturb.o ddh_mix.o fl2hl.o hl2fl.o posnam.o posname.o wrap_actke.o

clean:
	\rm -f *.o *.xml *.a *.x *.mod *.optrpt

tidy:
	\rm -f *.xml *.optrpt
