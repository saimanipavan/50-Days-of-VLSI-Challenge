# Basic Gates in Verilog

## Overview

This folder contains the Verilog implementation of fundamental logic gates using **Gate-Level Modeling**. Each design is verified through simulation using a dedicated testbench, and the generated waveforms and RTL schematics are included for reference.

## Folder Contents

```
Basic_Gates/
│
├── AND_OR_NOT.v
├── NAND_NOR_XOR_XNOR.v
├── AND_OR_NOT_TB.v
├── NAND_NOR_XOR_XNOR_TB.v
├── AND_OR_NOT_Waveform.png
├── NAND_NOR_XOR_XNOR_Waveform.png
├── AND_OR_NOT_RTL.png
└── NAND_NOR_XOR_XNOR_RTL.png
```

## Modules

### 1. AND_OR_NOT

Implements the following logic gates:

* AND
* OR
* NOT (Input X)
* NOT (Input Y)

### Inputs

* `x`
* `y`

### Outputs

* `and_out`
* `or_out`
* `not_x_out`
* `not_y_out`

---

### 2. NAND_NOR_XOR_XNOR

Implements the following logic gates:

* NAND
* NOR
* XOR
* XNOR

### Inputs

* `x`
* `y`

### Outputs

* `nand_out`
* `nor_out`
* `xor_out`
* `xnor_out`

---

## Testbench

Each module has an independent testbench that applies all possible input combinations.

| Time (ns) | x | y |
| --------- | - | - |
| 0         | 0 | 0 |
| 10        | 0 | 1 |
| 20        | 1 | 0 |
| 30        | 1 | 1 |

The simulation terminates automatically after **50 ns**.

---

## Simulation Results

The following verification artifacts are included:

* RTL source code
* Testbench
* Simulation waveforms
* RTL schematics

These confirm the correct functionality of all implemented logic gates.

---

## Modeling Style

* **Gate-Level Modeling**
* Uses Verilog built-in gate primitives:

  * `and`
  * `or`
  * `not`
  * `nand`
  * `nor`
  * `xor`
  * `xnor`

---

## Learning Outcomes

After completing this project, you will understand:

* Gate-Level Modeling in Verilog
* Verilog gate primitives
* Module instantiation
* Writing testbenches
* Functional simulation
* Waveform verification
* RTL schematic generation

---

## Tools Used

* Xilinx Vivado
* Verilog HDL
* XSim Simulator

---

**Day 1 – 50 Days VLSI Challenge**
