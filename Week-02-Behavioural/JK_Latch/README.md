# JK Latch

## Overview

This folder contains the Verilog implementation of a **JK Latch** using **Behavioral Modeling**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
JK_Latch/
│
├── JK_Latch.v
│
├── JK_Latch_TB.v
│
├── JK_Latch_Waveform.png
│
└── JK_Latch_RTL.png
```

## Module Description

A **JK Latch** is a **level-sensitive sequential circuit** that stores one bit of information. It is an improvement over the SR Latch by eliminating the invalid input condition. When both inputs are HIGH, the output toggles.

### Inputs

* `J`
* `K`

### Outputs

* `Q`
* `Q_bar`

---

## Truth Table

|  J  |  K  | Q (Next State) | Operation |
| :-: | :-: | :------------: | --------- |
|  0  |  0  |    No Change   | Hold      |
|  0  |  1  |        0       | Reset     |
|  1  |  0  |        1       | Set       |
|  1  |  1  |     Toggle     | Toggle    |

---

## Implementation

The JK Latch is implemented using **Behavioral Modeling** with an `always` block and `if-else` conditional statements.

The implementation includes:

* **Hold** condition
* **Reset** operation
* **Set** operation
* **Toggle** operation

---

## Testbench

The testbench applies different input combinations to verify all operating conditions of the JK Latch.

| Time (ns) |  J  |  K  | Operation |
| --------- | :-: | :-: | --------- |
| 0         |  0  |  1  | Reset     |
| 10        |  1  |  1  | Toggle    |
| 20        |  1  |  0  | Set       |
| 30        |  0  |  0  | Hold      |

The simulation ends automatically after **50 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct operation of the JK Latch for all input combinations.

---

## Modeling Style

* **Behavioral Modeling**
* `always` block
* `if-else` conditional statements
* Continuous assignment (`assign`) for `Q_bar`

---

## Learning Outcomes

After completing this project, you will understand:

* JK Latch operation
* Sequential logic fundamentals
* Behavioral Modeling in Verilog
* `always` blocks
* Toggle operation
* `reg` and `wire` data types
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

**Day 11 – Week 2 – 50 Days VLSI Challenge**
