# Library Organization

## File Organization

```
/foss/designs/libs/core_analog/ota5t/ota5t.sch
/foss/designs/libs/core_analog/ota5t/ota5t.sym
/foss/designs/libs/core_analog/ota5t/ota5t.spice
/foss/designs/libs/core_analog/ota5t/ota5t.gds
/foss/designs/libs/switchmatrix/swmatrix_5_10/swmatrix_5_10.sch
/foss/designs/libs/switchmatrix/swmatrix_5_10/swmatrix_5_10.sym
/foss/designs/libs/switchmatrix/swmatrix_5_10/swmatrix_5_10.gds
/foss/designs/libs/switchmatrix/DFF_2phase_1/DFF_2phase_1.sch
/foss/designs/libs/switchmatrix/DFF_2phase_1/DFF_2phase_1.sym
/foss/designs/libs/switchmatrix/DFF_2phase_1/DFF_2phase_1.gds
/foss/designs/libs/switchmatrix/TGate/TGate.sch
/foss/designs/libs/switchmatrix/TGate/TGate.sym
/foss/designs/libs/switchmatrix/TGate/TGate.gds
/foss/designs/libs/tb_switchmatrix/tb_DFF_2phase_1/tb_DFF_2phase_1.sch
/foss/designs/libs/tb_switchmatrix/tb_TGate/tb_TGate.sch
/foss/designs/libs/tb_switchmatrix/tb_swmatrix_5_10/tb_swmatrix_5_10.sch
```

## Library Tree Structure

```
/foss/designs/libs/
├── core_analog/
│   └── ota5t/
│       ├── ota5t.sch
│       ├── ota5t.sym
│       ├── ota5t.spice
│       └── ota5t.gds
├── switchmatrix/
│   ├── swmatrix_5_10/
│   │   ├── swmatrix_5_10.sch
│   │   ├── swmatrix_5_10.sym
│   │   └── swmatrix_5_10.gds
│   ├── DFF_2phase_1/
│   │   ├── DFF_2phase_1.sch
│   │   ├── DFF_2phase_1.sym
│   │   └── DFF_2phase_1.gds
│   └── TGate/
│       ├── TGate.sch
│       ├── TGate.sym
│       └── TGate.gds
└── tb_switchmatrix/
    ├── tb_DFF_2phase_1/
    │   └── tb_DFF_2phase_1.sch
    ├── tb_TGate/
    │   └── tb_TGate.sch
    └── tb_swmatrix_5_10/
        └── tb_swmatrix_5_10.sch
```
