v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -160 90 -120 {lab=Vds}
N 90 -160 250 -160 {lab=Vds}
N 250 -160 250 -120 {lab=Vds}
N -100 -90 50 -90 {lab=Vgs}
N 90 -90 110 -90 {lab=GND}
N 90 -60 110 -60 {lab=GND}
N 110 -90 110 -60 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 70 -90 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} 250 -90 0 0 {name=Vds value=0 savecurrent=false}
C {vsource.sym} -100 -60 0 0 {name=Vgs value=0 savecurrent=false}
C {gnd.sym} -100 -30 0 0 {name=l1 lab=GND}
C {gnd.sym} 250 -60 0 0 {name=l2 lab=GND}
C {gnd.sym} 90 -60 0 0 {name=l3 lab=GND}
C {code_shown.sym} 0 30 0 0 {name=DC_SIMULATION only_toplevel=false value=".lib/usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc Vgs 0 1.8 1m Vds 0 1.8 .5
.save all"}
C {lab_pin.sym} -100 -90 0 0 {name=pin1 sig_type=std_logic lab=Vgs}
C {lab_pin.sym} 250 -120 2 0 {name=pin2 sig_type=std_logic lab=Vds}
