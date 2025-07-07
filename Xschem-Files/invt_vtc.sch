v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -100 40 60 {lab=vin}
N 80 -70 80 30 {lab=vout}
N 80 -20 90 -20 {lab=vout}
N 90 -20 100 -20 {lab=vout}
N 30 -20 40 -20 {lab=vin}
N 20 -20 30 -20 {lab=vin}
N 80 90 80 120 {lab=gnd}
N 80 -160 80 -130 {lab=vdd}
N 80 60 100 60 {lab=gnd}
N 100 60 100 100 {lab=gnd}
N 80 100 100 100 {lab=gnd}
N 80 -100 100 -100 {lab=vdd}
N 100 -150 100 -100 {lab=vdd}
N 80 -150 100 -150 {lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 60 -100 0 0 {name=M1
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} 60 60 0 0 {name=M2
W=2
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
C {ipin.sym} 20 -20 0 0 {name=p4 lab=vin
}
C {ipin.sym} 80 -160 0 0 {name=p1 lab=vdd}
C {ipin.sym} 80 120 0 0 {name=p2 lab=gnd}
C {opin.sym} 100 -20 0 0 {name=p3 lab=vout}
