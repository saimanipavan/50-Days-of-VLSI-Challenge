# 3×8 Decoder

## Overview

This folder contains the Verilog implementation of a **3×8 Decoder** using **Gate-Level Modeling**. The design converts a 3-bit binary input into one of eight active output lines. The implementation is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
Decoder_3x8/
│
├── Decoder_3x8.v
│
├── Decoder_3x8_TB.v
│
├── Decoder_3x8_Waveform.png
│
└── Decoder_3x8_RTL.png
```

## Module Description

The 3×8 Decoder converts a 3-bit binary input into a one-hot 8-bit output, where only one output line is HIGH for each valid input combination.

### Inputs

* `i[2:0]`

### Outputs

* `y[7:0]`

### Truth Table

| Input (`i`) | Active Output (`y`) |
| :---------: | :-----------------: |
|    `000`    |      `00000001`     |
|    `001`    |      `00000010`     |
|    `010`    |      `00000100`     |
|    `011`    |      `00001000`     |
|    `100`    |      `00010000`     |
|    `101`    |      `00100000`     |
|    `110`    |      `01000000`     |
|    `111`    |      `10000000`     |

---

## Testbench

The testbench verifies the decoder by applying all possible 3-bit input combinations.

| Time (ns) | Input (`i`) |
| --------- | ----------- |
| 0         | `000`       |
| 10        | `001`       |
| 20        | `010`       |
| 30        | `011`       |
| 40        | `100`       |
| 50        | `101`       |
| 60        | `110`       |
| 70        | `111`       |

The simulation ends automatically after **100 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct functionality of the 3×8 Decoder.

---

## Modeling Style

* **Gate-Level Modeling**
* Verilog gate primitives used:

  * `not`
  * `and`

---

## Learning Outcomes

After completing this project, you will understand:

* Decoder operation
* One-hot output generation
* Gate-Level Modeling in Verilog
* Combinational logic design
* Writing Verilog testbenches
* Functional simulation
* Waveform analysis
* RTL schematic generation

---

## Tools Used

* Xilinx Vivado
* Verilog HDL
* XSim Simulator

---

**Day 5 – 50 Days VLSI Challenge**
