# Frequently Asked Design Questions

### What off-chip load does my chip have to drive?

All depends .... You should include models of the instruments you will use to measure your chip (e.g. oscilloscope, spectrum analyzer, ...) or loads you will connect (maybe a speaker).

At lower frequencies, say up to a few MHz, it's good to target the ability to drive an oscilloscope probe. Prof. Tom Lee provided guidance in this [SSCS Magazine article](https://www.nxtbook.com/nxtbooks/ieee/mssc_spring2021/index.php?startid=111#/p/110). For an ADALM2000 [here are the specs](https://www.analog.com/media/en/news-marketing-collateral/product-highlight/ADALM2000-Active-Learning-Module.pdf). Also take a look at e.g. this [Passive 10x Voltage Probe Datasheet](https://www.tek.com/en/datasheet/passive-10x-voltage-probe)

- 1x probe: typical 1MOhm // 10-20pF
- 10x probe: typical 10MOhm // <10pF 

For digital outputs, a common estimate is 10pF of loading (or more). 

At higher frequencies, things get much more complicated. But the guidance remains the same. Study what the loading will be on the PCB or test set up, build an equivalent electrical model, and include it in your simulation test bench. 

### What on-chip load does my block have to drive and how do I drive my block?

Always simulate your circuits *in context* with the correct signal source driving it and with the correct loading. 
- If you do not have the next stage ready to attach as a load, estimate the load and put a resistive // capacitive load. A 'bad' estimate is still better than 'no' estimate!
- E.g. when applying a clock, do not connect the ideal voltage source to your circuit but put two inverters as a 'clock buffer' to get realistic clock waveforms
    
### Avoid Ideal Current and Voltage Sources

**Avoid** ideal voltage sources and ideal current sources, driving your circuit directly:
   - put a parallel resistance to current bias sources; think what a required value is, that is very instructive: 10K, or 100K, or more, or less ... There is no single universal answer
   - put a series resistor for a voltage source
        - power supply, say 10 Ohms or less (This will start to model real sources and/or supply wiring resistance leading to IR drops)
        - signal source: 
            - a lot of lab equipment has a 50Ohm output impedance
            - if it is a another circuit, try to include it or think about what an appropriate model is for the source impedance
            - or add e.g. inverters as an on-chip clock buffer or LO buffer

> NOTE: Ideal circuit elements can actually create 'artificial' issues in circuits that can take a lot of time to debug but are not physical. 