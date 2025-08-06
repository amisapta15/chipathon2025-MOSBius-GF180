# Frequently Asked Design Questions

### What off-chip load does my chip have to drive?

All depends .... You should include models of the instruments you will use to measure your chip (e.g. oscilloscope, spectrum analyzer, ...) or loads you will connect (maybe a speaker).

At lower frequencies, say up to a few MHz, it's good to target the ability to drive an oscilloscope probe. Prof. Tom Lee provided guidance in this [SSCS Magazine article](https://www.nxtbook.com/nxtbooks/ieee/mssc_spring2021/index.php?startid=111#/p/110). For an ADALM2000 [here are the specs](https://www.analog.com/media/en/news-marketing-collateral/product-highlight/ADALM2000-Active-Learning-Module.pdf). Also take a look at e.g. this [Passive 10x Voltage Probe Datasheet](https://www.tek.com/en/datasheet/passive-10x-voltage-probe)

- 1x probe: typical 1MOhm // 10-20pF
- 10x probe: typical 10MOhm // <10pF 

For digital outputs, a common estimate is 10pF of loading (or more). 

At higher frequencies, things get much more complicated. But the guidance remains the same. Study what the loading will be on the PCB or test set up, build an equivalent electrical model, and include it in your simulation test bench. 