* SPICE NETLIST
***************************************

.SUBCKT pfeed30000
** N=6 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_nwellres 1 2
** N=3 EP=2 IP=0 FDC=1
R0 1 2 4891.48 L=8.65e-06 W=2.1e-06 $[RW] $X=2060 $Y=720 $D=37
.ENDS
***************************************
.SUBCKT subil_pngatering_440
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pngatebuffsing_503 2 3 4
** N=7 EP=3 IP=0 FDC=1
M0 2 3 4 2 NH L=5e-07 W=3e-05 $X=26020 $Y=5150 $D=1
.ENDS
***************************************
.SUBCKT subil_pngate2buffsing 2 3 4
** N=7 EP=3 IP=14 FDC=2
X0 2 3 4 subil_pngatebuffsing_503 $T=0 6220 1 0 $X=16000 $Y=-2070
X1 2 3 4 subil_pngatebuffsing_503 $T=0 2640 0 0 $X=16000 $Y=1080
.ENDS
***************************************
.SUBCKT ICV_1 1 3 4
** N=7 EP=3 IP=14 FDC=4
X0 3 1 4 subil_pngate2buffsing $T=0 -9440 0 0 $X=16000 $Y=-11510
X1 3 1 4 subil_pngate2buffsing $T=0 0 0 0 $X=16000 $Y=-2070
.ENDS
***************************************
.SUBCKT subil_ppolyres 1 2
** N=3 EP=2 IP=0 FDC=1
R0 1 2 302.279 L=2.5e-06 W=4e-06 $[RE] $X=140 $Y=5120 $D=28
.ENDS
***************************************
.SUBCKT asubil_pdiodepower
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_dio2
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT subil_psegment
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_cornerarray
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_via1array
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pad
** N=2 EP=0 IP=14 FDC=0
.ENDS
***************************************
.SUBCKT subil_ppgatebuff 2 3 4
** N=4 EP=3 IP=0 FDC=1
M0 2 3 4 2 PH L=4e-07 W=5.2e-05 $X=10090 $Y=4110 $D=8
.ENDS
***************************************
.SUBCKT subil_ppgate2buff 2 3 4
** N=4 EP=3 IP=8 FDC=2
X0 2 3 4 subil_ppgatebuff $T=1480 3020 1 0 $X=4750 $Y=-4550
X1 2 3 4 subil_ppgatebuff $T=1480 -560 0 0 $X=4750 $Y=-1860
.ENDS
***************************************
.SUBCKT subil_ppbuff3d00_ESD 2 3 4
** N=4 EP=3 IP=16 FDC=12
M0 4 3 2 2 PH L=4e-07 W=5.2e-05 $X=10500 $Y=-460 $D=8
M1 2 3 4 2 PH L=4e-07 W=5.2e-05 $X=10500 $Y=4580 $D=8
M2 4 3 2 2 PH L=4e-07 W=5.2e-05 $X=10500 $Y=35840 $D=8
M3 2 3 4 2 PH L=4e-07 W=5.2e-05 $X=10500 $Y=40880 $D=8
X4 2 3 4 subil_ppgate2buff $T=-1070 8290 0 0 $X=3680 $Y=3740
X5 2 3 4 subil_ppgate2buff $T=-1070 15550 0 0 $X=3680 $Y=11000
X6 2 3 4 subil_ppgate2buff $T=-1070 22810 0 0 $X=3680 $Y=18260
X7 2 3 4 subil_ppgate2buff $T=-1070 30070 0 0 $X=3680 $Y=25520
.ENDS
***************************************
.SUBCKT subil_preside
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pnesd3d00
** N=3 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_CDNS_784494521891
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_CDNS_784494521890
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_ppdrive3d00_ESD 1 5 6
** N=10 EP=3 IP=18 FDC=1
M0 1 5 6 1 NH L=4e-07 W=3e-05 $X=31540 $Y=92610 $D=1
.ENDS
***************************************
.SUBCKT pc3d00 VSS VDDO VSSO
** N=12 EP=3 IP=59 FDC=44
*.CALIBRE ISOLATED NETS: VDD
D0 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=4765 $Y=140450 $D=54
D1 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=7565 $Y=140450 $D=54
D2 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=10365 $Y=140450 $D=54
D3 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=13165 $Y=140450 $D=54
D4 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=15965 $Y=140450 $D=54
D5 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=18765 $Y=140450 $D=54
D6 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=21565 $Y=140450 $D=54
D7 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=29765 $Y=140450 $D=54
D8 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=32565 $Y=140450 $D=54
D9 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=35365 $Y=140450 $D=54
D10 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=38165 $Y=140450 $D=54
D11 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=40965 $Y=140450 $D=54
D12 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=43765 $Y=140450 $D=54
D13 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=46565 $Y=140450 $D=54
R14 VSS 9 1190.92 L=2.1e-06 W=2.1e-06 $[RW] $X=52650 $Y=141995 $D=37
X15 10 VSSO subil_nwellres $T=59235 139640 0 90 $X=56235 $Y=140800
X16 11 VDDO subil_nwellres $T=63600 139690 0 90 $X=60600 $Y=140850
X19 10 VSSO PAD ICV_1 $T=13400 151690 1 270 $X=2470 $Y=87580
X20 10 VSSO PAD ICV_1 $T=32280 151690 1 270 $X=21350 $Y=87580
X21 10 VSSO PAD ICV_1 $T=51160 151690 1 270 $X=40230 $Y=87580
X22 PADR 7 subil_ppolyres $T=18015 135660 0 270 $X=21585 $Y=131300
X23 7 PAD subil_ppolyres $T=34830 135670 0 270 $X=38400 $Y=131310
X26 VDDO 11 PAD subil_ppbuff3d00_ESD $T=-4000 203800 0 0 $X=-350 $Y=196990
X27 VSS 9 PADR subil_ppdrive3d00_ESD $T=-15160 89730 0 0 $X=-920 $Y=92510
.ENDS
***************************************
.SUBCKT subil_midconer2
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pfrelr
** N=5 EP=0 IP=10 FDC=0
*.CALIBRE ISOLATED NETS: VSS VDDO VDD VSSO
.ENDS
***************************************
.SUBCKT subil_presistorpower 1 2
** N=3 EP=2 IP=0 FDC=1
R0 1 2 8253.06 L=1.46e-05 W=2.1e-06 $[RW] $X=-20 $Y=10560 $D=37
.ENDS
***************************************
.SUBCKT subil_pngatering_ESD22
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pngatebuff_ESD22 2 3 4
** N=5 EP=3 IP=0 FDC=1
M0 2 3 4 2 N L=2.5e-07 W=3e-05 $X=26020 $Y=5400 $D=2
.ENDS
***************************************
.SUBCKT subil_pngate2buff_ESD22 2 3 4
** N=5 EP=3 IP=10 FDC=2
X0 2 3 4 subil_pngatebuff_ESD22 $T=0 6220 1 0 $X=16000 $Y=-2070
X1 2 3 4 subil_pngatebuff_ESD22 $T=0 2640 0 0 $X=16000 $Y=1430
.ENDS
***************************************
.SUBCKT ICV_2 2 3 4
** N=5 EP=3 IP=10 FDC=4
X0 2 3 4 subil_pngate2buff_ESD22 $T=0 -9440 0 0 $X=16000 $Y=-11510
X1 2 3 4 subil_pngate2buff_ESD22 $T=0 0 0 0 $X=16000 $Y=-2070
.ENDS
***************************************
.SUBCKT subil_4via_ESD
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pv0icon_ESD
** N=5 EP=0 IP=12 FDC=0
.ENDS
***************************************
.SUBCKT subil_ppgatebuffpower_0di_ESD22 1 2 3
** N=5 EP=3 IP=0 FDC=1
M0 2 3 1 2 P L=2.5e-07 W=4e-05 $X=9010 $Y=4310 $D=6
.ENDS
***************************************
.SUBCKT subil_ppgate2buffpower_0di_ESD22 1 2 3
** N=5 EP=3 IP=10 FDC=2
X0 1 2 3 subil_ppgatebuffpower_0di_ESD22 $T=0 3020 1 0 $X=3710 $Y=-4550
X1 1 2 3 subil_ppgatebuffpower_0di_ESD22 $T=0 -560 0 0 $X=3710 $Y=-1860
.ENDS
***************************************
.SUBCKT subil_ppbuffpower_0di_ESD22 1 2 3
** N=5 EP=3 IP=30 FDC=12
X0 1 2 3 subil_ppgate2buffpower_0di_ESD22 $T=0 1030 0 0 $X=3710 $Y=-3520
X1 1 2 3 subil_ppgate2buffpower_0di_ESD22 $T=0 8290 0 0 $X=3710 $Y=3740
X2 1 2 3 subil_ppgate2buffpower_0di_ESD22 $T=0 15550 0 0 $X=3710 $Y=11000
X3 1 2 3 subil_ppgate2buffpower_0di_ESD22 $T=0 22810 0 0 $X=3710 $Y=18260
X4 1 2 3 subil_ppgate2buffpower_0di_ESD22 $T=0 30070 0 0 $X=3710 $Y=25520
X5 1 2 3 subil_ppgate2buffpower_0di_ESD22 $T=0 37330 0 0 $X=3710 $Y=32780
.ENDS
***************************************
.SUBCKT subil_pdiodepower
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_powerbase_1 1 2 3 4
** N=9 EP=4 IP=4 FDC=19
D0 4 1 P3 AREA=1.331e-11 PJ=2.862e-05 $X=14620 $Y=11030 $D=54
D1 4 1 P3 AREA=1.331e-11 PJ=2.862e-05 $X=17420 $Y=11030 $D=54
D2 4 1 P3 AREA=1.331e-11 PJ=2.862e-05 $X=20220 $Y=11030 $D=54
D3 4 1 P3 AREA=1.331e-11 PJ=2.862e-05 $X=23020 $Y=11030 $D=54
D4 4 1 P3 AREA=1.331e-11 PJ=2.862e-05 $X=25820 $Y=11030 $D=54
D5 4 1 P3 AREA=1.331e-11 PJ=2.862e-05 $X=28620 $Y=11030 $D=54
D6 4 1 P3 AREA=1.331e-11 PJ=2.862e-05 $X=31420 $Y=11030 $D=54
D7 4 1 P3 AREA=1.331e-11 PJ=2.862e-05 $X=34220 $Y=11030 $D=54
D8 4 1 P3 AREA=1.331e-11 PJ=2.862e-05 $X=37020 $Y=11030 $D=54
D9 1 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=43960 $Y=11030 $D=54
D10 1 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=46760 $Y=11030 $D=54
D11 1 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=49560 $Y=11030 $D=54
D12 1 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=52360 $Y=11030 $D=54
D13 1 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=55160 $Y=11030 $D=54
D14 1 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=57960 $Y=11030 $D=54
D15 1 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=60760 $Y=11030 $D=54
D16 1 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=63560 $Y=11030 $D=54
D17 1 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=66360 $Y=11030 $D=54
C18 3 2 L=1.513e-05 W=1.513e-05 $[CH] $X=51860 $Y=41355 $D=61
.ENDS
***************************************
.SUBCKT pv0i VDD VSS VSSO
** N=10 EP=3 IP=57 FDC=47
*.CALIBRE ISOLATED NETS: VDDO
X1 VDD 6 subil_presistorpower $T=3010 196210 0 0 $X=2810 $Y=205700
X2 6 8 subil_presistorpower $T=3010 216270 0 0 $X=2810 $Y=225760
X3 7 9 subil_presistorpower $T=60150 196210 0 0 $X=59950 $Y=205700
X4 9 VSS subil_presistorpower $T=60150 216270 0 0 $X=59950 $Y=225760
X7 VSS 7 VDD subil_pngate2buff_ESD22 $T=13340 151690 1 270 $X=2410 $Y=87580
X8 VSS 7 VDD subil_pngate2buff_ESD22 $T=60540 151690 1 270 $X=49610 $Y=87580
X9 VSS 7 VDD ICV_2 $T=22780 151690 1 270 $X=11850 $Y=87580
X10 VSS 7 VDD ICV_2 $T=41660 151690 1 270 $X=30730 $Y=87580
X12 VSS VDD 8 subil_ppbuffpower_0di_ESD22 $T=3500 203800 0 0 $X=-60 $Y=196810
X13 VSS 7 VDD VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
.ENDS
***************************************
.SUBCKT subil_pngatering
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pngatebuff_ESD 1 2 3
** N=6 EP=3 IP=0 FDC=1
M0 2 3 1 2 NH L=4e-07 W=3e-05 $X=26020 $Y=5250 $D=1
.ENDS
***************************************
.SUBCKT subil_pngate2buff_ESD 1 2 3
** N=6 EP=3 IP=12 FDC=2
X0 1 2 3 subil_pngatebuff_ESD $T=0 6220 1 0 $X=16000 $Y=-2070
X1 1 2 3 subil_pngatebuff_ESD $T=0 2640 0 0 $X=16000 $Y=1330
.ENDS
***************************************
.SUBCKT ICV_3 1 2 3
** N=6 EP=3 IP=12 FDC=4
X0 2 3 1 subil_pngate2buff_ESD $T=0 -9440 0 0 $X=16000 $Y=-11510
X1 2 3 1 subil_pngate2buff_ESD $T=0 0 0 0 $X=16000 $Y=-2070
.ENDS
***************************************
.SUBCKT subil_pv0acon_ESD
** N=5 EP=0 IP=12 FDC=0
.ENDS
***************************************
.SUBCKT subil_ppgatebuffpower 2 3 4
** N=6 EP=3 IP=0 FDC=1
M0 2 3 4 2 PH L=4e-07 W=4e-05 $X=9010 $Y=4110 $D=8
.ENDS
***************************************
.SUBCKT subil_ppgate2buffpower 2 3 4
** N=6 EP=3 IP=12 FDC=2
X0 2 3 4 subil_ppgatebuffpower $T=0 3020 1 0 $X=-3870 $Y=-4910
X1 2 3 4 subil_ppgatebuffpower $T=0 -560 0 0 $X=-3870 $Y=-1870
.ENDS
***************************************
.SUBCKT subil_ppbuffpower 2 3 4
** N=6 EP=3 IP=36 FDC=12
X0 2 3 4 subil_ppgate2buffpower $T=0 1030 0 0 $X=-3870 $Y=-3880
X1 2 3 4 subil_ppgate2buffpower $T=0 8290 0 0 $X=-3870 $Y=3380
X2 2 3 4 subil_ppgate2buffpower $T=0 15550 0 0 $X=-3870 $Y=10640
X3 2 3 4 subil_ppgate2buffpower $T=0 22810 0 0 $X=-3870 $Y=17900
X4 2 3 4 subil_ppgate2buffpower $T=0 30070 0 0 $X=-3870 $Y=25160
X5 2 3 4 subil_ppgate2buffpower $T=0 37330 0 0 $X=-3870 $Y=32420
.ENDS
***************************************
.SUBCKT pv0a VDDO VSSO VSS
** N=10 EP=3 IP=68 FDC=47
*.CALIBRE ISOLATED NETS: VDD
X1 VDDO 7 subil_presistorpower $T=3010 196210 0 0 $X=2810 $Y=205700
X2 7 8 subil_presistorpower $T=3010 216270 0 0 $X=2810 $Y=225760
X3 6 9 subil_presistorpower $T=60150 196210 0 0 $X=59950 $Y=205700
X4 9 VSSO subil_presistorpower $T=60150 216270 0 0 $X=59950 $Y=225760
X5 VSS 6 VDDO VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
X8 VDDO VSSO 6 subil_pngate2buff_ESD $T=13340 151690 1 270 $X=2410 $Y=87580
X9 VDDO VSSO 6 subil_pngate2buff_ESD $T=60540 151690 1 270 $X=49610 $Y=87580
X10 6 VDDO VSSO ICV_3 $T=22780 151690 1 270 $X=11850 $Y=87580
X11 6 VDDO VSSO ICV_3 $T=41660 151690 1 270 $X=30730 $Y=87580
X13 VDDO 8 VSSO subil_ppbuffpower $T=3500 203800 0 0 $X=-370 $Y=196810
.ENDS
***************************************
.SUBCKT subil_pngatebuff_ESD1 1 2 3
** N=6 EP=3 IP=0 FDC=1
M0 2 3 1 2 NH L=4e-07 W=3e-05 $X=26020 $Y=5250 $D=1
.ENDS
***************************************
.SUBCKT subil_pngate2buff_ESD1 1 2 3
** N=6 EP=3 IP=12 FDC=2
X0 1 2 3 subil_pngatebuff_ESD1 $T=0 6220 1 0 $X=16000 $Y=-2070
X1 1 2 3 subil_pngatebuff_ESD1 $T=0 2640 0 0 $X=16000 $Y=1080
.ENDS
***************************************
.SUBCKT subil_pvdacon_ESD
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_powerbasecon_ESD 1 2 3 4
** N=11 EP=4 IP=12 FDC=4
X0 3 10 subil_presistorpower $T=1110 -9670 0 0 $X=910 $Y=-180
X1 10 2 subil_presistorpower $T=1110 10390 0 0 $X=910 $Y=19880
X2 1 11 subil_presistorpower $T=56330 -9550 0 0 $X=56130 $Y=-60
X3 11 4 subil_presistorpower $T=56330 10510 0 0 $X=56130 $Y=20000
.ENDS
***************************************
.SUBCKT pvda VSS VSSO VDDO
** N=9 EP=3 IP=77 FDC=47
*.CALIBRE ISOLATED NETS: VDD
X1 VSS 6 VDDO VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
X4 VDDO 7 VSSO subil_ppbuffpower $T=3500 203800 0 0 $X=-370 $Y=196810
X5 VDDO VSSO 6 subil_pngate2buff_ESD1 $T=13340 151690 1 270 $X=2410 $Y=87580
X6 VDDO VSSO 6 subil_pngate2buff_ESD1 $T=22780 151690 1 270 $X=11850 $Y=87580
X7 VDDO VSSO 6 subil_pngate2buff_ESD1 $T=32220 151690 1 270 $X=21290 $Y=87580
X8 VDDO VSSO 6 subil_pngate2buff_ESD1 $T=41660 151690 1 270 $X=30730 $Y=87580
X9 VDDO VSSO 6 subil_pngate2buff_ESD1 $T=51100 151690 1 270 $X=40170 $Y=87580
X10 VDDO VSSO 6 subil_pngate2buff_ESD1 $T=60540 151690 1 270 $X=49610 $Y=87580
X12 6 7 VDDO VSSO subil_powerbasecon_ESD $T=3330 205880 0 0 $X=4240 $Y=126110
.ENDS
***************************************
.SUBCKT subil_pngatering22
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pvdicon_ESD
** N=6 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pngatebuff_ESD122 2 3 4
** N=7 EP=3 IP=0 FDC=1
M0 2 3 4 2 N L=2.5e-07 W=3e-05 $X=26020 $Y=5400 $D=2
.ENDS
***************************************
.SUBCKT subil_pngate2buff_ESD122 2 3 4
** N=7 EP=3 IP=14 FDC=2
X0 2 3 4 subil_pngatebuff_ESD122 $T=0 6220 1 0 $X=16000 $Y=-2070
X1 2 3 4 subil_pngatebuff_ESD122 $T=0 2640 0 0 $X=16000 $Y=1080
.ENDS
***************************************
.SUBCKT pvdi VDD VSS VSSO
** N=9 EP=3 IP=81 FDC=47
*.CALIBRE ISOLATED NETS: VDDO
X1 VSS VDD 7 subil_ppbuffpower_0di_ESD22 $T=3500 203800 0 0 $X=-60 $Y=196810
X2 VSS 6 VDD VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
X3 6 7 VDD VSS subil_powerbasecon_ESD $T=3330 205880 0 0 $X=4240 $Y=126110
X7 VSSO 6 VDD subil_pngate2buff_ESD122 $T=13340 151690 1 270 $X=2410 $Y=87580
X8 VSSO 6 VDD subil_pngate2buff_ESD122 $T=22780 151690 1 270 $X=11850 $Y=87580
X9 VSSO 6 VDD subil_pngate2buff_ESD122 $T=32220 151690 1 270 $X=21290 $Y=87580
X10 VSSO 6 VDD subil_pngate2buff_ESD122 $T=41660 151690 1 270 $X=30730 $Y=87580
X11 VSSO 6 VDD subil_pngate2buff_ESD122 $T=51100 151690 1 270 $X=40170 $Y=87580
X12 VSSO 6 VDD subil_pngate2buff_ESD122 $T=60540 151690 1 270 $X=49610 $Y=87580
.ENDS
***************************************
.SUBCKT padring
** N=11 EP=0 IP=396 FDC=1432
X36 2 1 9 pc3d00 $T=331990 1646850 0 270 $X=331990 $Y=1580930
X37 2 1 9 pc3d00 $T=331990 1741850 0 270 $X=331990 $Y=1675930
X38 2 1 9 pc3d00 $T=331990 1836850 0 270 $X=331990 $Y=1770930
X39 2 1 9 pc3d00 $T=331990 1931850 0 270 $X=331990 $Y=1865930
X40 2 1 9 pc3d00 $T=331990 2026850 0 270 $X=331990 $Y=1960930
X41 2 1 9 pc3d00 $T=331990 2121850 0 270 $X=331990 $Y=2055930
X42 2 1 9 pc3d00 $T=331990 2216850 0 270 $X=331990 $Y=2150930
X43 2 1 9 pc3d00 $T=331990 2311850 0 270 $X=331990 $Y=2245930
X44 2 1 9 pc3d00 $T=991990 1301850 0 0 $X=991070 $Y=1301850
X45 2 1 9 pc3d00 $T=1056990 2591850 0 180 $X=991070 $Y=2341530
X46 2 1 9 pc3d00 $T=1086990 1301850 0 0 $X=1086070 $Y=1301850
X47 2 1 9 pc3d00 $T=1151990 2591850 0 180 $X=1086070 $Y=2341530
X48 2 1 9 pc3d00 $T=1181990 1301850 0 0 $X=1181070 $Y=1301850
X49 2 1 9 pc3d00 $T=1246990 2591850 0 180 $X=1181070 $Y=2341530
X50 2 1 9 pc3d00 $T=1276990 1301850 0 0 $X=1276070 $Y=1301850
X51 2 1 9 pc3d00 $T=1341990 2591850 0 180 $X=1276070 $Y=2341530
X52 2 1 9 pc3d00 $T=1621990 1646850 1 270 $X=1371670 $Y=1580930
X53 2 1 9 pc3d00 $T=1621990 1741850 1 270 $X=1371670 $Y=1675930
X54 2 1 9 pc3d00 $T=1621990 1836850 1 270 $X=1371670 $Y=1770930
X55 2 1 9 pc3d00 $T=1621990 1866850 0 90 $X=1371670 $Y=1865930
X56 2 1 9 pc3d00 $T=1621990 1961850 0 90 $X=1371670 $Y=1960930
X57 2 1 9 pc3d00 $T=1621990 2056850 0 90 $X=1371670 $Y=2055930
X58 2 1 9 pc3d00 $T=1621990 2151850 0 90 $X=1371670 $Y=2150930
X59 2 1 9 pc3d00 $T=1621990 2246850 0 90 $X=1371670 $Y=2245930
X64 10 2 9 pv0i $T=706990 2591850 1 0 $X=706120 $Y=2341790
X65 10 2 9 pv0i $T=896990 2591850 1 0 $X=896120 $Y=2341790
X66 1 9 2 pv0a $T=706990 1301850 0 0 $X=706120 $Y=1301850
X67 1 9 2 pv0a $T=896990 1301850 0 0 $X=896120 $Y=1301850
X68 2 9 1 pvda $T=611990 2591850 1 0 $X=611120 $Y=2341530
X69 2 9 1 pvda $T=801990 2591850 1 0 $X=801120 $Y=2341530
X70 10 2 9 pvdi $T=611990 1301850 0 0 $X=611120 $Y=1301850
X71 10 2 9 pvdi $T=801990 1301850 0 0 $X=801120 $Y=1301850
.ENDS
***************************************
