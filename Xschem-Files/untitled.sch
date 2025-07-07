v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 240 -10 240 30 {lab=Vout}
N 240 -120 240 -70 {lab=Vcc}
N 240 90 240 140 {lab=GND}
N 280 60 280 70 {lab=GND}
N 280 70 280 80 {lab=GND}
N 280 90 280 100 {lab=GND}
N 280 90 280 100 {lab=GND}
N 240 60 280 60 {lab=GND}
N 240 90 280 90 {lab=GND}
N 280 80 280 100 {lab=GND}
N 240 -40 280 -40 {lab=Vcc}
N 280 -100 280 -40 {lab=Vcc}
N 240 -100 280 -100 {lab=Vcc}
N 240 -140 240 -120 {lab=Vcc}
N 200 -40 200 60 {lab=Vin}
N 190 0 200 0 {lab=Vin}
N 240 0 320 0 {lab=Vout}
C {vsource.sym} 30 -140 0 0 {name=Vcc value=1.8v savecurrent=false}
C {vsource.sym} -120 -10 0 0 {name=Vcc1 value="pulse\{0 1.0 lns lns lns 5ns 10ns\}" savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} 220 60 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 220 -40 0 0 {name=M2
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
C {lab_pin.sym} -120 -40 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 30 -170 0 0 {name=p2 sig_type=std_logic lab=Vcc}
C {lab_pin.sym} 240 -140 0 0 {name=p3 sig_type=std_logic lab=Vcc}
C {lab_pin.sym} 320 0 2 0 {name=p4 sig_type=std_logic lab=Vout
}
C {lab_pin.sym} 190 0 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {gnd.sym} -120 20 0 0 {name=l1 lab=GND}
C {gnd.sym} 30 -110 0 0 {name=l2 lab=GND}
C {gnd.sym} 240 140 0 0 {name=l3 lab=GND}
C {code_shown.sym} 460 -90 0 0 {name=s1 only_toplevel=false value=".lib/usr/local/share/sky130_fd_pr/models/sky130.libspice tt .tran 0.1n 100n .save all"}
