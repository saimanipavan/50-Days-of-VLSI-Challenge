# 3×8 Decoder

## Overview

This folder contains the Verilog implementation of a **3×8 Decoder** using **Dataflow Modeling**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
Decoder/
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

A **3×8 Decoder** is a combinational logic circuit that converts a **3-bit binary input** into **one of eight active-high output lines**. For every valid input combination, only one output is asserted HIGH while all others remain LOW.

### Inputs

* `i[2:0]`

### Outputs

* `y[7:0]`

---

## Truth Table

| Input (`i`) | Active Output |
| :---------: | :-----------: |
|    `000`    |     `y[0]`    |
|    `001`    |     `y[1]`    |
|    `010`    |     `y[2]`    |
|    `011`    |     `y[3]`    |
|    `100`    |     `y[4]`    |
|    `101`    |     `y[5]`    |
|    `110`    |     `y[6]`    |
|    `111`    |     `y[7]`    |

---

## Logic Equations

* **y[0]** = `~i[2] · ~i[1] · ~i[0]`
* **y[1]** = `~i[2] · ~i[1] · i[0]`
* **y[2]** = `~i[2] · i[1] · ~i[0]`
* **y[3]** = `~i[2] · i[1] · i[0]`
* **y[4]** = `i[2] · ~i[1] · ~i[0]`
* **y[5]** = `i[2] · ~i[1] · i[0]`
* **y[6]** = `i[2] · i[1] · ~i[0]`
* **y[7]** = `i[2] · i[1] · i[0]`

---

## Testbench

The testbench applies all possible input combinations to verify the functionality of the 3×8 Decoder.

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

These verify the correct operation of the 3×8 Decoder for all input combinations.

---

## Modeling Style

* **Dataflow Modeling**
* Verilog continuous assignments (`assign`)
* Bitwise AND (`&`) and NOT (`~`) operators

---

## Learning Outcomes

After completing this project, you will understand:

* Decoder operation
* One-hot output generation
* Dataflow Modeling in Verilog
* Continuous assignment (`assign`)
* Bitwise logic operations
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

**Day 9 – Week 2 – 50 Days VLSI Challenge**
