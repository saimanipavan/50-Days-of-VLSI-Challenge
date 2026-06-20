# D Latch

## Overview

This folder contains the Verilog implementation of a **D (Data) Latch** using **Behavioral Modeling**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
D_Latch/
│
├── D_Latch.v
│
├── D_Latch_TB.v
│
├── D_Latch_Waveform.png
│
└── D_Latch_RTL.png
```

## Module Description

A **D Latch** is a **level-sensitive sequential circuit** that stores one bit of data. When the **Enable (`en`)** signal is HIGH, the output follows the input (`D`). When the enable signal is LOW, the latch retains its previous value.

### Inputs

* `D`
* `en`

### Outputs

* `Q`
* `Q_bar`

---

## Truth Table

| Enable (`en`) |  D  | Q (Next State) |          Q̅         |
| :-----------: | :-: | :------------: | :-----------------: |
|       0       |  X  |    No Change   | Previous Complement |
|       1       |  0  |        0       |          1          |
|       1       |  1  |        1       |          0          |

---

## Implementation

The D Latch is implemented using **Behavioral Modeling** with an `always @(*)` block.

The implementation includes:

* **Transparent mode** when `en = 1`
* **Hold mode** when `en = 0`

---

## Testbench

The testbench applies different combinations of `D` and `en` to verify the latch operation.

| Time (ns) |  en |  D  | Operation           |
| --------- | :-: | :-: | ------------------- |
| 0         |  1  |  0  | Load `0`            |
| 10        |  1  |  1  | Load `1`            |
| 20        |  0  |  0  | Hold Previous Value |
| 30        |  0  |  1  | Hold Previous Value |

The simulation ends automatically after **50 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct operation of the D Latch in both transparent and hold modes.

---

## Modeling Style

* **Behavioral Modeling**
* `always @(*)` block
* `if-else` conditional statements
* Continuous assignment (`assign`) for `Q_bar`

---

## Learning Outcomes

After completing this project, you will understand:

* D Latch operation
* Level-sensitive storage elements
* Behavioral Modeling in Verilog
* `always` blocks
* Enable-controlled data storage
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
