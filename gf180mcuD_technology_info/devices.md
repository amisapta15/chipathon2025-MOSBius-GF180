# Devices in gf180mcuD





## MOSFET Device Table with SPICE Model Names


> ⚠️ Warning: this was partly generated using an LLM. Double check the information before using or relying on it. <br>

- Here is a list of MOS devices available in **gf180mcuD**
- Schematic label is referring to `/foss/pdks/gf180mcuD/libs.tech/xschem/tests/0_top.sch`


| Schematic Label            | Device Type                     | Voltage Rating | SPICE Model Name      | Notes                                    |
|---------------------------|----------------------------------|----------------|-----------------------|------------------------------------------|
| `test_nfet_03v3`          | Thick-oxide NMOS                | 3.3 V          | `nfet_03v3`           | For IO or level-shifting                 |
| `test_pfet_03v3`          | Thick-oxide PMOS                | 3.3 V          | `pfet_03v3`           |                                          |
| `test_nfet_03v3_dss`      | NMOS 3.3 V w/ DSS extension      | 3.3 V          | `nfet_03v3_dss`       | Extended drain for HV                    |
| `test_pfet_03v3_dss`      | PMOS 3.3 V w/ DSS extension      | 3.3 V          | `pfet_03v3_dss`       |                                          |
| `test_nfet_05v0`          | Intermediate HV NMOS            | 5.0 V          | `nfet_05v0`           |                                          |
| `test_nfet_06v0`          | HV NMOS                         | 6.0 V          | `nfet_06v0`           | General-purpose HV NMOS                  |
| `test_pfet_06v0`          | HV PMOS                         | 6.0 V          | `pfet_06v0`           |                                          |
| `test_nfet_06v0_dss`      | HV NMOS with DSS                | 6.0 V          | `nfet_06v0_dss`       | Extended drain                           |
| `test_pfet_06v0_dss`      | HV PMOS with DSS                | 6.0 V          | `pfet_06v0_dss`       |                                          |
| `test_nfet_06v0_nvt`      | Native-V<sub>TH</sub> NMOS      | 6.0 V          | `nfet_06v0_nvt`       | Threshold near 0 V                       |
| `test_nfet_10v0_asym`     | Asymmetric HV NMOS              | 10.0 V         | `nfet_10v0_asym`      | High-voltage output or IO path           |
| `test_pfet_10v0_asym`     | Asymmetric HV PMOS              | 10.0 V         | `pfet_10v0_asym`      | High-voltage output or IO path           |



## Gm-over-ID Characterization


- Here is a basic notebook: [Peter Kinget, gf180mcuD Gm-over-ID study, Jupyter Notebook](https://github.com/peterkinget/gm-ID-gf180mcuD/blob/main/starter_files_open_source_tools/gf180mcuD/PK_techsweep_plots_from_mat_v1.ipynb) and the results for NMOS and PMOS devices:
    - [3.3V NMOS (pdf)](https://github.com/peterkinget/gm-ID-gf180mcuD/blob/main/starter_files_open_source_tools/gf180mcuD/PDFs/PK_techsweep_plots_from_mat_v1-NMOS.pdf)
    - [3.3V PMOS (pdf)](https://github.com/peterkinget/gm-ID-gf180mcuD/blob/main/starter_files_open_source_tools/gf180mcuD/PDFs/PK_techsweep_plots_from_mat_v1-PMOS.pdf)

- It's based on [Boris Murmann, Book-on-gm-ID-design, Starter Files](https://github.com/bmurmann/Book-on-gm-ID-design/tree/main/starter_files_open_source_tools)
    - Take a look at the Jupyter Notebooks (`.ipynb` files) in [this folder](https://github.com/bmurmann/Book-on-gm-ID-design/tree/main/starter_files_open_source_tools/gf180mcuD).

- You might find this paper of interest as well: 
    - D. M. Binkley, B. J. Blalock, and J. M. Rochelle, “Optimizing Drain Current, Inversion Level, and Channel Length in Analog CMOS Design,” Analog Integr Circ Sig Process, vol. 47, no. 2, pp. 137–163, May 2006, doi: 10.1007/s10470-006-2949-y.

- [Chapter 3 in H. Pretl et al., 'Analog Circuit Design' ](https://iic-jku.github.io/analog-circuit-design/analog_circuit_design.html#sec-gmid-method) discusses gm/ID characterization using the open-source tools. 


----
## List of All Devices

**These are the devices that are available on the September 2025 gf180mcu Chipathon tapeout** [(source)](https://github.com/sscs-ose/sscs-chipathon-2025/issues/66#issuecomment-3166472853)

| Feature Group | Feature Name | Model Name |
|---------------|--------------|------------|
| **BJT** | | |
| BJT | VPNP (Pplus-Nwell-Psub), emitter size 10um x 10um | vpnp_10x10 |
| BJT | VNPN (Nplus-LVPWELL-DNWELL), emitter size 5um x 5um | vnpn_5x5 |
| BJT | VNPN (Nplus-LVPWELL-DNWELL), emitter size 0p54um x 2um | vnpn_0p54x2 |
| BJT | VPNP (Pplus-Nwell-Psub), emitter size 0p42um x 10um | vpnp_0p42x10 |
| BJT | VNPN (Nplus-LVPWELL-DNWELL), emitter size 10um x 10um | vnpn_10x10 |
| BJT | VPNP (Pplus-Nwell-Psub), emitter size 0p42um x 5um | vpnp_0p42x5 |
| BJT | VPNP (Pplus-Nwell-Psub), emitter size 5um x 5um | vpnp_5x5 |
| BJT | VNPN (Nplus-LVPWELL-DNWELL), emitter size 0p54um x 16um | vnpn_0p54x16 |
| BJT | VNPN (Nplus-LVPWELL-DNWELL), emitter size 0p54um x 4um | vnpn_0p54x4 |
| BJT | VNPN (Nplus-LVPWELL-DNWELL), emitter size 0p54um x 8um | vnpn_0p54x8 |
| **CAPACITOR (MOS)** | | |
| CAPACITOR (MOS) | 5V/6V NMOS capacitor (Outside DNWELL) | nmoscap_6p0 |
| CAPACITOR (MOS) | 5V/6V PMOS capacitor (Outside DNWELL) | pmoscap_6p0_dw |
| CAPACITOR (MOS) | 3.3V PMOS capacitor (Inside DNWELL) | pmoscap_3p3_dw |
| CAPACITOR (MOS) | 3.3V NMOS capacitor (inside NWell) | nmoscap_3p3_b |
| CAPACITOR (MOS) | 5V/6V PMOS capacitor (Outside DNWELL) | pmoscap_6p0 |
| CAPACITOR (MOS) | 5V/6V PMOS capacitor (inside Psub) | pmoscap_6p0_b |
| CAPACITOR (MOS) | 3.3V NMOS capacitor (Outside DNWELL) | nmoscap_3p3 |
| CAPACITOR (MOS) | 5V/6V NMOS capacitor (inside NWell) | nmoscap_6p0_b |
| CAPACITOR (MOS) | 3.3V PMOS capacitor (Outside DNWELL) | pmoscap_3p3 |
| CAPACITOR (MOS) | 3.3V PMOS capacitor (inside Psub) | pmoscap_3p3_b |
| CAPACITOR (MOS) | 3.3V NMOS capacitor (Inside DNWELL) | nmoscap_3p3_dw |
| CAPACITOR (MOS) | 5V/6V NMOS capacitor (inside DNWELL) | nmoscap_6p0_dw |
| **Diode** | | |
| Diode | 5V/6V N+/LVPWELL Diode (Outside DNWELL) | np_6p0 |
| Diode | 3.3V N+/LVPWELL diode (Outside DNWELL) | np_3p3 |
| Diode | 3.3V P+/Nwell diode (Outside DNWELL) | pn_3p3 |
| Diode | Schottky diode | sc_diode |
| Diode | 3.3V Nwell/Psub diode | nwp_3p3 |
| Diode | 5V/6V P+/Nwell diode (Outside DNWELL) | pn_6p0 |
| Diode | 3.3V DWENLL/Psub diode | dnwps_3p3 |
| Diode | 5V/6V LVPWELL/DNWELL diode | dnwpw_6p0 |
| Diode | 5V/6V Nwell/Psub diode | nwp_6p0 |
| Diode | 3.3V LVPWELL/DNWELL diode | dnwpw_3p3 |
| Diode | 5V/6V DWENLL/Psub diode | dnwps_6p0 |
| **EFUSE** | | |
| EFUSE | efuse | efuse |
| **ESD (SAB MOSFET)** | | |
| ESD (SAB MOSFET) | 6V SAB NMOS (Outside DNWELL) | nmos_6p0_sab |
| ESD (SAB MOSFET) | 6V SAB PMOS (Outside DNWELL) | pmos_6p0_sab |
| ESD (SAB MOSFET) | 3.3V SAB NMOS (Inside DNWELL) | nmos_3p3_dw_sab |
| ESD (SAB MOSFET) | 6V SAB PMOS (Inside DNWELL) | pmos_6p0_dw_sab |
| ESD (SAB MOSFET) | 3.3V SAB PMOS (Inside DNWELL) | pmos_3p3_dw_sab |
| ESD (SAB MOSFET) | 3.3V SAB PMOS (Outside DNWELL) | pmos_3p3_sab |
| ESD (SAB MOSFET) | 5V SAB NMOS (Outside DNWELL) | nmos_5p0_sab |
| ESD (SAB MOSFET) | 5V SAB NMOS (Inside DNWELL) | nmos_5p0_dw_sab |
| ESD (SAB MOSFET) | 5V SAB PMOS (Inside DNWELL) | pmos_5p0_dw_sab |
| ESD (SAB MOSFET) | 5V SAB PMOS (Outside DNWELL) | pmos_5p0_sab |
| ESD (SAB MOSFET) | 3.3V SAB NMOS (Outside DNWELL) | nmos_3p3_sab |
| ESD (SAB MOSFET) | 6V SAB NMOS (Inside DNWELL) | nmos_6p0_dw_sab |
| **Metal Resistor** | | |
| Metal Resistor | 2-terminal 11K Metal Top resistor | tm11k |
| Metal Resistor | 2-terminal Metal resistor | rm |
| **MIM Capacitor** | | |
| MIM Capacitor Type | Type B (Plate between (n-1) TM/TM) | |
| MIM Capacitor | 2.0fF/um2 MIM capacitor | mim_single_2p0fF |
| **MOSFET** | | |
| MOSFET | 3.3V NMOS (Outside DNWELL) | nmos_3p3 |
| MOSFET | 6V NMOS (Outside DNWELL) | nmos_6p0 |
| MOSFET | 3.3V PMOS (Outside DNWELL) | pmos_3p3 |
| MOSFET | 5V PMOS (Outside DNWELL) | pmos_5p0 |
| MOSFET | 5V NMOS (Outside DNWELL) | nmos_5p0 |
| MOSFET | 3.3V PMOS (Inside DNWELL) | pmos_3p3_dw |
| MOSFET | 3.3V NMOS (Inside DNWELL) | nmos_3p3_dw |
| MOSFET | 6V PMOS (Inside DNWELL) | pmos_6p0_dw |
| MOSFET | 6V native Vt NMOS | nmos_6p0_nat |
| MOSFET | 10V LDNMOS | nmos_10p0_asym |
| MOSFET | 5V PMOS (Inside DNWELL) | pmos_5p0_dw |
| MOSFET | 6V PMOS (Outside DNWELL) | pmos_6p0 |
| MOSFET | 5V NMOS (Inside DNWELL) | nmos_5p0_dw |
| MOSFET | 6V NMOS (Inside DNWELL) | nmos_6p0_dw |
| MOSFET | 10V LDPMOS | pmos_10p0_asym |
| MOSFET | 3.3V native Vt NMOS | nmos_3p3_nat |
| **Passivation** | | |
| Passivation | Single passivation | Single passivation |
| **Resistor** | | |
| Resistor | N+ Poly Unsalicided Rs | npolyf_u |
| Resistor | P+ Diffusion Unsalicided Rs (Outside DNWELL) | pplus_u |
| Resistor | N+ Diffusion Unsalicided Rs (Outside DNWELL) | nplus_u |
| Resistor | LVPWELL (under STI) | pwell |
| Resistor | P+ Diffusion Salicided Rs (Outside DNWELL) | pplus_s |
| Resistor | N+ Diffusion Salicided Rs (Outside DNWELL) | nplus_s |
| Resistor | P+ Diffusion Salicided Rs (Inside DNWELL) | pplus_s_dw |
| Resistor | P+ Diffusion Unsalicided Rs (Inside DNWELL) | pplus_u_dw |
| Resistor | P+ Poly Unsalicided Rs | ppolyf_u |
| Resistor | Nwell (under STI) | nwell |
| Resistor | N+ Diffusion Unsalicided Rs (Inside DNWELL) | nplus_u_dw |
| Resistor | N+ Diffusion Salicided Rs (Inside DNWELL) | nplus_s_dw |
| **Resistor (HRES)** | | |
| Resistor (HRES) | 1K P+ HRS | ppolyf_u_1k, ppolyf_u_1k_6p0 |

## Thin-Oxide 1.8V Devices are not Available in GF180MCU

- From [Definition of the Process Variant](https://github.com/RTimothyEdwards/open_pdks/blob/master/gf180mcu/Makefile.in): 
> GF180MCU uses the same base process as
> other GF180 processes.  However, instead of a thin oxide gate, the base
> oxide is a thick oxide, and the thick oxide mask defines a thicker oxide.
> The process DRC rules then follow the rule sets for thick oxide devices,
> so the minimum length transistor is 280nm, making this much more like a
> 0.28um process than a 0.18um process.

- So, the following devices are **not** available in **gf180mcuD**:

| Schematic Label            | Device Type                     | Voltage Rating | SPICE Model Name      | Notes                                    |
|---------------------------|----------------------------------|----------------|-----------------------|------------------------------------------|
| *(not in test schematic)* | Thin-oxide NMOS (core)          | 1.8 V          | `nfet_01v8`           | Standard core NMOS                       |
| *(not in test schematic)* | Thin-oxide PMOS (core)          | 1.8 V          | `pfet_01v8`           | Standard core PMOS                       |
| *(not in test schematic)* | Thin-oxide NMOS, LVT            | 1.8 V          | `nfet_01v8_lvt`       | Low-V<sub>TH</sub> core NMOS             |
| *(not in test schematic)* | Thin-oxide NMOS, HVT            | 1.8 V          | `nfet_01v8_hvt`       | High-V<sub>TH</sub> NMOS (low leakage)   |
| *(not in test schematic)* | Thin-oxide PMOS, LVT            | 1.8 V          | `pfet_01v8_lvt`       | Low-V<sub>TH</sub> core PMOS             |
| *(not in test schematic)* | Thin-oxide PMOS, HVT            | 1.8 V          | `pfet_01v8_hvt`       | High-V<sub>TH</sub> PMOS                 |