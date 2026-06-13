# 4-Bit Comparator

## Overview

This folder contains the Verilog implementation of a **4-Bit Magnitude Comparator** using **Gate-Level Modeling**. The design compares two 4-bit binary numbers and determines whether the first input is **greater than**, **equal to**, or **less than** the second input. The implementation is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
Comparator/
│
├── Comparator_4bit.v
│
├── Comparator_4bit_TB.v
│
├── Comparator_4bit_Waveform.png
│
└── Comparator_4bit_RTL.png
```

## Module Description

The 4-Bit Comparator compares two 4-bit binary inputs and generates one of three output signals indicating the comparison result.

### Inputs

* `a[3:0]`
* `b[3:0]`

### Outputs

* `a_gt_b` — HIGH when `a > b`
* `a_eq_b` — HIGH when `a = b`
* `a_lt_b` — HIGH when `a < b`

---

## Testbench

The testbench verifies all three comparison conditions.

| Time (ns) | `a`    | `b`    | Expected Result |
| --------- | ------ | ------ | --------------- |
| 0         | `1111` | `0000` | `a > b`         |
| 10        | `0000` | `1111` | `a < b`         |
| 20        | `0000` | `0000` | `a = b`         |
| 30        | `1111` | `1111` | `a = b`         |

The simulation ends automatically after **50 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct functionality of the 4-Bit Comparator.

---

## Modeling Style

* **Gate-Level Modeling**
* Verilog gate primitives used:

  * `not`
  * `and`
  * `or`
  * `xnor`

---

## Learning Outcomes

After completing this project, you will understand:

* Magnitude comparator operation
* Multi-bit binary comparison
* Equality detection using XNOR gates
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

**Day 6 – 50 Days VLSI Challenge**
