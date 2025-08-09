v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 300 -380 300 -350 {lab=VDD}
N 300 -210 300 -170 {lab=VSS}
N 220 -280 260 -280 {lab=n1}
N 530 -380 530 -350 {lab=VDD}
N 530 -210 530 -170 {lab=VSS}
N 450 -280 490 -280 {lab=n2}
N 760 -380 760 -350 {lab=VDD}
N 760 -210 760 -170 {lab=VSS}
N 680 -280 720 -280 {lab=n3}
N 910 -280 950 -280 {lab=n1}
N 420 -240 420 -200 {lab=n2}
N 660 -240 660 -200 {lab=n3}
N 930 -240 930 -200 {lab=n1}
N 420 -140 420 -100 {lab=VSS}
N 660 -140 660 -100 {lab=VSS}
N 930 -140 930 -100 {lab=VSS}
C {/foss/designs/Chipathon2025_gf180/gf180_examples/inverter/xschem/inverter.sym} 360 -160 0 0 {name=x1}
C {lab_wire.sym} 300 -380 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 300 -170 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {/foss/designs/Chipathon2025_gf180/gf180_examples/inverter/xschem/inverter.sym} 590 -160 0 0 {name=x2}
C {lab_wire.sym} 530 -380 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 530 -170 2 1 {name=p3 sig_type=std_logic lab=VSS}
C {/foss/designs/Chipathon2025_gf180/gf180_examples/inverter/xschem/inverter.sym} 820 -160 0 0 {name=x3}
C {lab_wire.sym} 760 -380 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 760 -170 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 950 -280 0 1 {name=p6 sig_type=std_logic lab=n1}
C {lab_wire.sym} 460 -280 0 1 {name=p8 sig_type=std_logic lab=n2}
C {lab_wire.sym} 690 -280 0 1 {name=p9 sig_type=std_logic lab=n3}
C {iopin.sym} 40 -350 0 0 {name=p10 lab=VDD}
C {iopin.sym} 40 -310 0 0 {name=p11 lab=VSS}
C {iopin.sym} 40 -270 0 0 {name=p12 lab=n1}
C {lab_wire.sym} 230 -280 0 0 {name=p13 sig_type=std_logic lab=n1}
C {capa-2.sym} 420 -170 0 0 {name=C1
m=1
value=100f
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 660 -170 0 0 {name=C2
m=1
value=100f
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 930 -170 0 0 {name=C3
m=1
value=100f
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 420 -240 0 1 {name=p14 sig_type=std_logic lab=n2}
C {lab_wire.sym} 660 -240 0 1 {name=p15 sig_type=std_logic lab=n3}
C {lab_wire.sym} 930 -240 0 1 {name=p16 sig_type=std_logic lab=n1}
C {lab_wire.sym} 420 -100 2 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 660 -100 2 1 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 930 -100 2 1 {name=p19 sig_type=std_logic lab=VSS}
