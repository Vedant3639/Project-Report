* SPICE NETLIST
***************************************

.SUBCKT INVERTER vdd vss vin out
** N=4 EP=4 IP=0 FDC=2
M0 out vin vss vss N L=1.8e-07 W=4.2e-07 $X=1265 $Y=1665 $D=2
M1 out vin vdd vdd P L=1.8e-07 W=4.2e-07 $X=1265 $Y=2955 $D=6
.ENDS
***************************************
