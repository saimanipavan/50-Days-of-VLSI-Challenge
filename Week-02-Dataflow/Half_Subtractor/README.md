# Half Subtractor

## Overview

This folder contains the Verilog implementation of a **Half Subtractor** using **Dataflow Modeling**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
Half_Subtractor/
│
├── Half_Subtractor.v
│
├── Half_Subtractor_TB.v
│
├── Half_Subtractor_Waveform.png
│
└── Half_Subtractor_RTL.png
```

## Module Description

The Half Subtractor performs the subtraction of two 1-bit binary inputs and produces a **Difference** and **Borrow** output.

### Inputs

* `a`
* `b`

### Outputs

* `difference`
* `borrow`

### Logic Equations

* **Difference** = `a ⊕ b`
* **Borrow** = `a̅ · b`

---

## Truth Table

|  a  |  b  | Difference | Borrow |
| :-: | :-: | :--------: | :----: |
|  0  |  0  |      0     |    0   |
|  0  |  1  |      1     |    1   |
|  1  |  0  |      1     |    0   |
|  1  |  1  |      0     |    0   |

---

## Testbench

The testbench applies all possible input combinations to verify the functionality of the Half Subtractor.

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

These verify the correct operation of the Half Subtractor.

---

## Modeling Style

* **Dataflow Modeling**
* Verilog continuous assignments (`assign`) used:

  * XOR (`^`) for Difference
  * NOT (`~`) and AND (`&`) for Borrow

---

## Learning Outcomes

After completing this project, you will understand:

* Half Subtractor design
* Dataflow Modeling in Verilog
* Continuous assignment (`assign`)
* Borrow generation logic
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

**Day 8 – 50 Days VLSI Challenge**
