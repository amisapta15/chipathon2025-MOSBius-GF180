# How to Organize Your Design Libraries

Here is a recommended library organization when using the **iic-osic-tools**. 
- Design **libraries** are stored as folders in `/foss/designs/libs`:
  - in library folders you have a folder for each **cell**:
    - in the cell folder you have a file for each **view**:
        - `.sch` schematics
        - `.sym` symbols
        - `.spice` netlists (e.g. for LVS)
        - `.gds` layout for the cell
    - cells higher in the design hierarchy use symbols or layouts of cells lower in the hierarchy, but they are at the same 'level' in the folder structure

This approach has proven effective in other EDA tool chains. Whereas the folder hierarchy is not as deep as the design hierarchy (all cells are in the same library folder even if they are children of parent cells), this simplifies future reuse. 

Cells in design libraries should only contain *physical circuit elements* from the PDK (mosfets, resistors, capacitors, ... ) and no ideal elements like voltage or current sources, ideal resistors or capacitors, dependent sources. 

- **Test benches** are stored in separate library folders:
  - this ensures that cells and verification schematics are clearly separated; this is an important practice for LVS and tape-out success. 

## Example

Here is a library for a switch matrix design; the top cell is `swmatrix_5_10` which uses the `DFF_2phase_1` and the `TGate` cells. (This is a reduced view, a full switch matrix design would require more cells.)

### File Tree View

```
/foss/designs/libs/
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

### Flat File List

```
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

# Schematic Editing

**Always** launch `xschem` from `/foss/designs/libs`
```
> cd /foss/design/libs
> xschem
```
- this will ensure that the schematics include the library folder as part of the path for the symbols in `xschem`.

# Layout Editing

We recommend using klayout with the `klayout_lib_manager.py` utility for library management. 

- Launch `klayout` from `/foss/design/libs`; if you are working in a repo using the *iic-osic-tools-project-template* then `klayout` is an alias with the necessary command-line arguments:
```
> cd /foss/designs/libs
> klayout
```
- Otherwise copy the `.py` script and launch `klayout` similar as below. 

```
> cd /foss/designs/libs
> klayout -rm $DESIGNS/scripts/klayout_lib_manager.py -geometry 1600x900+100+50 -e
```

- Once in klayout --> hit `update_libraries` which will scan `/foss/designs/libs` and all its subfolders for `.gds` files and create an alias listed in `/foss/designs/libs/libs.json`. 
