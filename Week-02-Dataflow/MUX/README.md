# Multiplexers (2×1, 4×1 & 8×1)

## Overview

This folder contains the Verilog implementation of **2×1, 4×1, and 8×1 Multiplexers (MUX)** using **Dataflow Modeling**. Each design is verified using a dedicated testbench, and the simulation waveforms along with the RTL schematics are included.

## Folder Contents

```text
Multiplexers/
│
├── MUX_2x1.v
├── MUX_2x1_TB.v
├── MUX_2x1_Waveform.png
├── MUX_2x1_RTL.png
│
├── MUX_4x1.v
├── MUX_4x1_TB.v
├── MUX_4x1_Waveform.png
├── MUX_4x1_RTL.png
│
├── MUX_8x1.v
├── MUX_8x1_TB.v
├── MUX_8x1_Waveform.png
└── MUX_8x1_RTL.png
```

## Module Description

A **Multiplexer (MUX)** is a combinational logic circuit that selects one input from multiple inputs based on the value of the select lines and forwards it to the output.

This project includes:

* **2×1 Multiplexer**
* **4×1 Multiplexer**
* **8×1 Multiplexer**

All modules are implemented using **Dataflow Modeling** with the Verilog conditional (`?:`) operator.

---

## 2×1 Multiplexer

### Inputs

* `i[1:0]`
* `sel`

### Output

* `y`

### Functionality

| Select (`sel`) | Output (`y`) |
| :------------: | :----------: |
|        0       |    `i[0]`    |
|        1       |    `i[1]`    |

---

## 4×1 Multiplexer

### Inputs

* `i[3:0]`
* `sel[1:0]`

### Output

* `y`

### Functionality

| Select (`sel`) | Output (`y`) |
| :------------: | :----------: |
|       00       |    `i[0]`    |
|       01       |    `i[1]`    |
|       10       |    `i[2]`    |
|       11       |    `i[3]`    |

---

## 8×1 Multiplexer

### Inputs

* `i[7:0]`
* `sel[2:0]`

### Output

* `y`

### Functionality

| Select (`sel`) | Output (`y`) |
| :------------: | :----------: |
|       000      |    `i[0]`    |
|       001      |    `i[1]`    |
|       010      |    `i[2]`    |
|       011      |    `i[3]`    |
|       100      |    `i[4]`    |
|       101      |    `i[5]`    |
|       110      |    `i[6]`    |
|       111      |    `i[7]`    |

---

## Testbench

Separate testbenches are provided for each multiplexer.

### 2×1 Multiplexer

* Applies all possible input combinations.
* Verifies both select line conditions (`0` and `1`).
* Simulation ends after **50 ns**.

### 4×1 Multiplexer

* Automatically increments the select lines every **5 ns**.
* Input vector changes every **20 ns**.
* Verifies all input-selection combinations.
* Simulation ends after **320 ns**.

### 8×1 Multiplexer

* Automatically increments the select lines every **2 ns**.
* Input vector changes every **16 ns**.
* Exhaustively verifies the selection logic.
* Simulation ends after **2000 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbenches
* Simulation waveforms
* RTL schematics

These verify the correct functionality of all three Multiplexer designs.

---

## Modeling Style

* **Dataflow Modeling**
* Verilog continuous assignment (`assign`)
* Conditional (ternary) operator (`?:`)
* Nested conditional operators for multi-input multiplexers

---

## Learning Outcomes

After completing this project, you will understand:

* Working principle of Multiplexers
* Dataflow Modeling in Verilog
* Conditional (`?:`) operator
* Nested ternary expressions
* Bus (vector) inputs in Verilog
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

**Day 9 – Week 2 – 50 Days VLSI Challenge**
