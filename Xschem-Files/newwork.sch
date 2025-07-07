v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -70 60 50 {lab=vout}
N 60 110 60 140 {lab=GND}
N 60 80 80 80 {lab=GND}
N 60 -100 80 -100 {lab=vcc}
N 80 -150 80 -100 {lab=vcc}
N 60 -170 60 -160 {lab=vcc}
N 20 -100 20 80 {lab=vin}
N 60 -20 100 -20 {lab=vout}
N 10 -20 20 -20 {lab=vin}
N 80 80 80 90 {lab=GND}
N 80 90 80 100 {lab=GND}
N 60 130 80 130 {lab=GND}
N 80 -170 80 -150 {lab=vcc}
N 60 -160 60 -130 {lab=vcc}
N 60 -170 80 -170 {lab=vcc}
N 80 100 80 130 {lab=GND}
N 100 -20 100 -10 {lab=vout}
C {vsource.sym} -190 -180 0 0 {name=vcc value=1.8 savecurrent=false}
C {vsource.sym} -280 -90 0 0 {name=v2 value="pulse(0 1.8 1ns 1ns 1ns 5ns 10ns)"}
C {/home/sakshamrawat/eda_tools/xschem-src/xschem_library/devices/lab_pin.sym} -190 -210 0 0 {name=p1 sig_type=std_logic lab=vcc}
C {/home/sakshamrawat/eda_tools/xschem-src/xschem_library/devices/lab_pin.sym} -280 -120 0 0 {name=p2 sig_type=std_logic lab=vin}
C {/home/sakshamrawat/eda_tools/xschem-src/xschem_library/devices/lab_pin.sym} 60 -170 0 0 {name=p3 sig_type=std_logic lab=vcc
}
C {/home/sakshamrawat/eda_tools/xschem-src/xschem_library/devices/lab_pin.sym} 100 -10 2 0 {name=p4 sig_type=std_logic lab=vout}
C {/home/sakshamrawat/eda_tools/xschem-src/xschem_library/devices/lab_pin.sym} 10 -20 0 0 {name=p5 sig_type=std_logic lab=vin
}
C {/home/sakshamrawat/eda_tools/xschem-src/xschem_library/devices/gnd.sym} -280 -60 0 0 {name=l1 lab=GND}
C {/home/sakshamrawat/eda_tools/xschem-src/xschem_library/devices/gnd.sym} -190 -150 0 0 {name=l2 lab=GND}
C {/home/sakshamrawat/eda_tools/xschem-src/xschem_library/devices/gnd.sym} 60 140 0 0 {name=l3 lab=GND}
C {code_shown.sym} 70 -240 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.1n 100n
.save all"}
C {sky130_fd_pr/pfet_01v8.sym} 40 -100 0 0 {name=M1
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 40 80 0 0 {name=M2
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
