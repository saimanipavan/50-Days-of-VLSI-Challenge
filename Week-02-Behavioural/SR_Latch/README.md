# SR Latch

## Overview

This folder contains the Verilog implementation of an **SR (Set-Reset) Latch** using **Behavioral Modeling**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
SR_Latch/
│
├── SR_Latch.v
│
├── SR_Latch_TB.v
│
├── SR_Latch_Waveform.png
│
└── SR_Latch_RTL.png
```

## Module Description

An **SR Latch** is a basic **bistable sequential circuit** capable of storing **one bit of information**. It has two control inputs, **Set (S)** and **Reset (R)**, and two complementary outputs, **Q** and **Q̅**.

The latch is level-sensitive, meaning its output changes immediately in response to changes in the inputs.

### Inputs

* `S`
* `R`

### Outputs

* `Q`
* `Q_bar`

---

## Truth Table

|  S  |  R  | Q (Next State) |          Q̅         |
| :-: | :-: | :------------: | :-----------------: |
|  0  |  0  |    No Change   | Previous Complement |
|  0  |  1  |        0       |          1          |
|  1  |  0  |        1       |          0          |
|  1  |  1  |  Invalid (`X`) |         `X`         |

---

## Implementation

The SR Latch is implemented using **Behavioral Modeling** with an `always @(*)` block.

The implementation includes:

* **Set** operation
* **Reset** operation
* **Hold** condition
* **Invalid** state (`S = R = 1`)

---

## Testbench

The testbench applies different input combinations to verify all operating conditions of the SR Latch.

| Time (ns) |  S  |  R  | Operation |
| --------- | :-: | :-: | --------- |
| 0         |  0  |  1  | Reset     |
| 10        |  1  |  0  | Set       |
| 20        |  0  |  0  | Hold      |
| 30        |  1  |  1  | Invalid   |

The simulation ends automatically after **50 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct operation of the SR Latch under all valid input conditions, as well as the invalid state.

---

## Modeling Style

* **Behavioral Modeling**
* `always @(*)` block
* `if-else` conditional statements
* Continuous assignment (`assign`) for `Q_bar`

---

## Learning Outcomes

After completing this project, you will understand:

* SR Latch operation
* Sequential logic fundamentals
* Behavioral Modeling in Verilog
* `always` blocks
* `reg` and `wire` data types
* State retention (Hold condition)
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
