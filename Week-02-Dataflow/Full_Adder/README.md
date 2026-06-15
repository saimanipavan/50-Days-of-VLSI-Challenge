# Full Adder

## Overview

This folder contains the Verilog implementation of a **Full Adder** using **Dataflow Modeling**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
Full_Adder/
│
├── Full_Adder.v
│
├── Full_Adder_TB.v
│
├── Full_Adder_Waveform.png
│
└── Full_Adder_RTL.png
```

## Module Description

The Full Adder performs the addition of three 1-bit binary inputs and produces a **Sum** and **Carry Out** output.

### Inputs

* `a`
* `b`
* `carry_in`

### Outputs

* `sum`
* `carry_out`

### Logic Equations

* **Sum** = `a ⊕ b ⊕ carry_in`
* **Carry Out** = `(a · b) + (carry_in · (a ⊕ b))`

> **Note:** In this implementation, the Full Adder is realized using Verilog arithmetic addition:
>
> ```verilog
> assign {carry_out, sum} = a + b + carry_in;
> ```

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

The testbench applies all possible input combinations to verify the functionality of the Full Adder.

| Time (ns) | a | b | carry_in |
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

These verify the correct operation of the Full Adder.

---

## Modeling Style

* **Dataflow Modeling**
* Verilog continuous assignment (`assign`) used
* Arithmetic addition operator (`+`)
* Concatenation operator (`{}`) for assigning Carry Out and Sum simultaneously

---

## Learning Outcomes

After completing this project, you will understand:

* Full Adder design
* Dataflow Modeling in Verilog
* Arithmetic operations using `assign`
* Concatenation operator (`{}`)
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
