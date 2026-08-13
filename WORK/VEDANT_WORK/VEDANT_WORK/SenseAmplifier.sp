* SPICE NETLIST
***************************************

.SUBCKT M3_M2_S_CDNS_783514486947
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT SenseAmplifier VOUT SA_BLB VDD SA_BL SE VSS
** N=8 EP=6 IP=4 FDC=5
M0 3 SA_BLB VOUT VSS N L=1.8e-07 W=4.2e-07 $X=1035 $Y=1835 $D=2
M1 6 SA_BL 3 VSS N L=1.8e-07 W=4.2e-07 $X=1755 $Y=1835 $D=2
M2 VSS SE 3 VSS N L=1.8e-07 W=4.2e-07 $X=3255 $Y=1835 $D=2
M3 VDD 6 VOUT VDD P L=1.8e-07 W=4.2e-07 $X=1035 $Y=3125 $D=6
M4 6 6 VDD VDD P L=1.8e-07 W=4.2e-07 $X=1755 $Y=3125 $D=6
.ENDS
***************************************
