# Half Adder

## Overview

This folder contains the Verilog implementation of a **Half Adder** using **Gate-Level Modeling**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
Half_Adder/
│
├── Half_Adder.v
│
├── Half_Adder_TB.v
│
├── Half_Adder_Waveform.png
│
└── Half_Adder_RTL.png
```

## Module Description

The Half Adder performs the addition of two 1-bit binary inputs and produces a **Sum** and **Carry** output.

### Inputs

* `a`
* `b`

### Outputs

* `sum`
* `carry`

### Logic Equations

* **Sum** = `a ⊕ b`
* **Carry** = `a · b`

---

## Truth Table

|  a  |  b  | Sum | Carry |
| :-: | :-: | :-: | :---: |
|  0  |  0  |  0  |   0   |
|  0  |  1  |  1  |   0   |
|  1  |  0  |  1  |   0   |
|  1  |  1  |  0  |   1   |

---

## Testbench

The testbench applies all possible input combinations to verify the functionality of the Half Adder.

| Time (ns) | a | b |
| --------- | - | - |
| 0         | 0 | 0 |
| 10        | 0 | 1 |
| 20        | 1 | 0 |
| 30        | 1 | 1 |

The simulation ends automatically after **50 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct operation of the Half Adder.

---

## Modeling Style

* **Gate-Level Modeling**
* Verilog gate primitives used:

  * `xor`
  * `and`

---

## Learning Outcomes

After completing this project, you will understand:

* Half Adder design
* Gate-Level Modeling in Verilog
* XOR and AND gate implementation
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
