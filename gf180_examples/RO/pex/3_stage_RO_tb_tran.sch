v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 160 -230 160 -190 {lab=VSS}
N 60 -330 60 -290 {lab=VSS}
N 60 -230 60 -190 {lab=GND}
N 160 -340 160 -290 {lab=VDD}
N 590 -390 590 -340 {lab=VDD}
N 590 -210 590 -170 {lab=VSS}
N 740 -290 780 -290 {lab=n1}
N 760 -230 760 -190 {lab=VSS}
C {devices/code_shown.sym} 30 -120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {vsource.sym} 60 -260 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 160 -260 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_wire.sym} 160 -190 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -330 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {gnd.sym} 60 -190 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 160 -340 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 590 -390 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 590 -170 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 760 -290 0 1 {name=p3 sig_type=std_logic lab=n1}
C {code_shown.sym} 740 -130 0 0 {name=SPICE only_toplevel=false value="
.include /foss/designs/Workshop_CASS/Modulo_Analogico/Laboratorios/Lab5/RO/pex/3_stage_RO.spice
.control
ic v(n1)=0
tran 1n 10u
plot v(n1)
.endc
"}
C {noconn.sym} 780 -290 0 1 {name=l2}
C {3_stage_RO.sym} 460 -200 0 0 {name=X1}
C {capa-2.sym} 760 -260 0 0 {name=C1
m=1
value=10f
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 760 -190 2 1 {name=p4 sig_type=std_logic lab=VSS}
