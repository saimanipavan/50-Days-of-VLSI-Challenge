# Multiplexers (2×1, 4×1, and 8×1)

## Overview

This folder contains the Verilog implementation of **2×1, 4×1, and 8×1 Multiplexers (MUX)** using **Gate-Level Modeling**. Each design is verified with its own testbench, and the corresponding simulation waveforms and RTL schematics are included.

## Folder Contents

```text
MUX/
│
├── MUX_2x1.v
├── MUX_4x1.v
├── MUX_8x1.v
│
├── MUX_2x1_TB.v
├── MUX_4x1_TB.v
├── MUX_8x1_TB.v
│
├── MUX_2x1_Waveform.png
├── MUX_4x1_Waveform.png
├── MUX_8x1_Waveform.png
│
├── MUX_2x1_RTL.png
├── MUX_4x1_RTL.png
└── MUX_8x1_RTL.png
```

## Module Descriptions

### 1. 2×1 Multiplexer

Selects one of two input signals based on a single select line.

#### Inputs

* `i[1:0]`
* `sel`

#### Output

* `y`

---

### 2. 4×1 Multiplexer

Selects one of four input signals using a 2-bit select line.

#### Inputs

* `i[3:0]`
* `sel[1:0]`

#### Output

* `y`

---

### 3. 8×1 Multiplexer

Selects one of eight input signals using a 3-bit select line.

#### Inputs

* `i[7:0]`
* `sel[2:0]`

#### Output

* `y`

---

## Testbench

Each multiplexer has an independent testbench to verify its functionality.

### MUX 2×1

* Tests all possible input combinations.
* Select line toggles every **5 ns**.
* Simulation ends after **50 ns**.

### MUX 4×1

* Select line increments every **5 ns**.
* Input vector increments every **20 ns**.
* Simulation ends after **320 ns**.

### MUX 8×1

* Select line increments every **2 ns**.
* Input vector increments every **16 ns**.
* Simulation ends after **100 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbenches
* Simulation waveforms
* RTL schematics

These verify the correct functionality of all three multiplexers.

---

## Modeling Style

* **Gate-Level Modeling**
* Verilog gate primitives used:

  * `not`
  * `and`
  * `or`

---

## Learning Outcomes

After completing this project, you will understand:

* Multiplexer (MUX) operation
* Gate-Level Modeling in Verilog
* Hierarchical combinational logic design
* Select-line based data routing
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

**Day 4 – 50 Days VLSI Challenge**
