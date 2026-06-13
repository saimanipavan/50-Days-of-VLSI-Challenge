# Full Adder

## Overview

This folder contains the Verilog implementation of a **Full Adder** using **Gate-Level Modeling**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
Full_Adder/
│
├──  Full_Adder.v
│
├── Full_Adder_TB.v
│
├── Full_Adder_Waveform.png
│
└── Full_Adder_RTL.png
```

## Module Description

The Full Adder performs the addition of three 1-bit binary inputs (two operands and a carry input) and produces a **Sum** and **Carry Out**.

### Inputs

* `a`
* `b`
* `carry_in`

### Outputs

* `sum`
* `carry_out`

### Logic Equations

* **Sum** = `a ⊕ b ⊕ carry_in`
* **Carry Out** = `(a · b) + ((a ⊕ b) · carry_in)`

---

## Truth Table

|  a  |  b  | Carry In | Sum | Carry Out |
| :-: | :-: | :------: | :-: | :-------: |
|  0  |  0  |     0    |  0  |     0     |
|  0  |  0  |     1    |  1  |     0     |
|  0  |  1  |     0    |  1  |     0     |
|  0  |  1  |     1    |  0  |     1     |
|  1  |  0  |     0    |  1  |     0     |
|  1  |  0  |     1    |  0  |     1     |
|  1  |  1  |     0    |  0  |     1     |
|  1  |  1  |     1    |  1  |     1     |

---

## Testbench

The testbench applies all possible combinations of the three input signals to verify the functionality of the Full Adder.

| Time (ns) | a | b | Carry In |
| --------- | - | - | -------- |
| 0         | 0 | 0 | 0        |
| 10        | 0 | 0 | 1        |
| 20        | 0 | 1 | 0        |
| 30        | 0 | 1 | 1        |
| 40        | 1 | 0 | 0        |
| 50        | 1 | 0 | 1        |
| 60        | 1 | 1 | 0        |
| 70        | 1 | 1 | 1        |

The simulation ends automatically after **90 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct functionality of the Full Adder.

---

## Modeling Style

* **Gate-Level Modeling**
* Verilog gate primitives used:

  * `xor`
  * `and`
  * `or`

---

## Learning Outcomes

After completing this project, you will understand:

* Full Adder design
* Gate-Level Modeling in Verilog
* Multi-level combinational logic implementation
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

**Day 2 – 50 Days VLSI Challenge**
