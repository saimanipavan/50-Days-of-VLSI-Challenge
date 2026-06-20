# T Latch

## Overview

This folder contains the Verilog implementation of a **T (Toggle) Latch** using **Behavioral Modeling**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
T_Latch/
│
├── T_Latch.v
│
├── T_Latch_TB.v
│
├── T_Latch_Waveform.png
│
└── T_Latch_RTL.png
```

## Module Description

A **T Latch** is a **level-sensitive sequential circuit** that stores one bit of information. When the **Enable (`en`)** signal is HIGH, the latch toggles its output if **T = 1** and retains its current state if **T = 0**.

> **Note:** In this implementation, when **`en = 0`**, the output is explicitly reset to `0` rather than retaining its previous state. This behavior is specific to this implementation and differs from the conventional T Latch, which typically holds its previous state when disabled.

### Inputs

* `T`
* `en`

### Outputs

* `Q`
* `Q_bar`

---

## Truth Table

| Enable (`en`) |  T  | Q (Next State) | Operation                         |
| :-----------: | :-: | :------------: | --------------------------------- |
|       0       |  X  |        0       | Reset *(implementation-specific)* |
|       1       |  0  |    No Change   | Hold                              |
|       1       |  1  |     Toggle     | Toggle                            |

---

## Implementation

The T Latch is implemented using **Behavioral Modeling** with an `always` block and nested `if-else` statements.

The implementation includes:

* **Reset** when `en = 0`
* **Hold** when `en = 1` and `T = 0`
* **Toggle** when `en = 1` and `T = 1`

---

## Testbench

The testbench applies different combinations of `T` and `en` to verify all operating conditions.

| Time (ns) |  T  |  en | Operation |
| --------- | :-: | :-: | --------- |
| 0         |  0  |  0  | Reset     |
| 10        |  1  |  0  | Reset     |
| 20        |  0  |  1  | Hold      |
| 30        |  1  |  1  | Toggle    |

The simulation ends automatically after **50 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct operation of the implemented T Latch.

---

## Modeling Style

* **Behavioral Modeling**
* `always` block
* Nested `if-else` conditional statements
* Continuous assignment (`assign`) for `Q_bar`

---

## Learning Outcomes

After completing this project, you will understand:

* T Latch operation
* Toggle functionality
* Sequential logic fundamentals
* Behavioral Modeling in Verilog
* `always` blocks
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
