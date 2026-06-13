# Full Subtractor

## Overview

This folder contains the Verilog implementation of a **Full Subtractor** using **Gate-Level Modeling**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
Full_Subtractor/
│
├── Full_Subtractor.v
│
├── Full_Subtractor_TB.v
│
├── Full_Subtractor_Waveform.png
│
└── Full_Subtractor_RTL.png
```

## Module Description

The Full Subtractor performs the subtraction of two 1-bit binary inputs along with a **Borrow In** signal and produces a **Difference** and **Borrow Out**.

### Inputs

* `a`
* `b`
* `borrow_in`

### Outputs

* `difference`
* `borrow_out`

### Logic Equations

* **Difference** = `a ⊕ b ⊕ borrow_in`
* **Borrow Out** = `a̅·b + (a ⊕ b)̅·borrow_in`

---

## Truth Table

|  a  |  b  | Borrow In | Difference | Borrow Out |
| :-: | :-: | :-------: | :--------: | :--------: |
|  0  |  0  |     0     |      0     |      0     |
|  0  |  0  |     1     |      1     |      1     |
|  0  |  1  |     0     |      1     |      1     |
|  0  |  1  |     1     |      0     |      1     |
|  1  |  0  |     0     |      1     |      0     |
|  1  |  0  |     1     |      0     |      0     |
|  1  |  1  |     0     |      0     |      0     |
|  1  |  1  |     1     |      1     |      1     |

---

## Testbench

The testbench applies all possible input combinations to verify the functionality of the Full Subtractor.

| Time (ns) | a | b | Borrow In |
| --------- | - | - | --------- |
| 0         | 0 | 0 | 0         |
| 10        | 0 | 0 | 1         |
| 20        | 0 | 1 | 0         |
| 30        | 0 | 1 | 1         |
| 40        | 1 | 0 | 0         |
| 50        | 1 | 0 | 1         |
| 60        | 1 | 1 | 0         |
| 70        | 1 | 1 | 1         |

The simulation ends automatically after **90 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct functionality of the Full Subtractor.

---

## Modeling Style

* **Gate-Level Modeling**
* Verilog gate primitives used:

  * `not`
  * `xor`
  * `and`
  * `or`

---

## Learning Outcomes

After completing this project, you will understand:

* Full Subtractor design
* Gate-Level Modeling in Verilog
* Borrow generation logic
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

**Day 3 – 50 Days VLSI Challenge**
