#!/bin/csh -f

setenv KIT_DIR /progs/FOUNDRY/SCL_V3/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3
setenv RDS_ROOT $KIT_DIR/HOTCODE
setenv MGC_CALIBRE_CUSTOMIZATION_FILE $RDS_ROOT/techs/generic/calibre/calibre_ts_drc.custom
setenv PERL5 /usr/bin/perl

source $RDS_ROOT/etc/RDS.cshrc
source $RDS_ROOT/etc/cdsDesKit.cshrc
source $RDS_ROOT/etc/cdsSystem.cshrc

setenv PROJ_ROOT /home/Vedant_int/Desktop/VEDANT_WORK

