* SPICE NETLIST
***************************************

.SUBCKT CMOS_INV vss vdd vin out
** N=4 EP=4 IP=0 FDC=2
M0 out vin vss vss N L=1.8e-07 W=4.2e-07 $X=910 $Y=385 $D=2
M1 out vin vdd vdd P L=1.8e-07 W=4.2e-07 $X=910 $Y=1670 $D=6
.ENDS
***************************************
.SUBCKT M3_M2_S_CDNS_783180312011
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_S_CDNS_783180312010
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT Write_Driver VDD WD_BLB WD_BL Din
** N=6 EP=4 IP=16 FDC=6
X0 1 VDD 4 WD_BLB CMOS_INV $T=2155 760 1 180 $X=155 $Y=175
X1 1 VDD Din 4 CMOS_INV $T=3655 760 1 180 $X=1655 $Y=175
X2 1 VDD Din WD_BL CMOS_INV $T=3380 760 0 0 $X=3380 $Y=175
.ENDS
***************************************
