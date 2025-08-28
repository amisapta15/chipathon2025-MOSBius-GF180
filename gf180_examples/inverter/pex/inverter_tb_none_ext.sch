v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 880 -250 910 -250 {lab=Vout}
N 900 -250 900 -220 {lab=Vout}
N 900 -160 900 -120 {lab=VSS}
N 410 -260 410 -220 {lab=VSS}
N 500 -260 500 -220 {lab=VSS}
N 310 -360 310 -320 {lab=VSS}
N 310 -260 310 -220 {lab=GND}
N 410 -370 410 -320 {lab=VDD}
N 500 -370 500 -320 {lab=Vin}
N 730 -370 730 -320 {lab=VDD}
N 730 -180 730 -140 {lab=VSS}
N 630 -250 690 -250 {lab=Vin}
C {lab_wire.sym} 910 -250 0 1 {name=p3 sig_type=std_logic lab=Vout}
C {capa-2.sym} 900 -190 0 0 {name=C1
m=1
value=1f
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 900 -120 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 70 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {vsource.sym} 310 -290 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 410 -290 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 500 -290 0 0 {name=Vin value=0 savecurrent=false}
C {lab_wire.sym} 410 -220 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 500 -220 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 310 -360 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {gnd.sym} 310 -220 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 410 -370 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 500 -370 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {code_shown.sym} 1000 -270 0 0 {name=SPICE only_toplevel=false value="
.include /foss/designs/Chipathon2025_gf180/gf180_examples/inverter/pex/inverter.spice
.control
dc Vin 0 3.3 0.01
plot v(Vout)
.endc
"}
C {inverter.sym} 560 -150 0 0 {name=X1}
C {lab_wire.sym} 730 -370 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 730 -140 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 630 -250 0 0 {name=p7 sig_type=std_logic lab=Vin}
