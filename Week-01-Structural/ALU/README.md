# 4-Bit Arithmetic Logic Unit (ALU)

## Overview

This folder contains the Verilog implementation of a **4-Bit Arithmetic Logic Unit (ALU)** using **Gate-Level Modeling**. The ALU performs arithmetic and logical operations by integrating previously designed combinational modules such as the Full Adder, Full Subtractor, Logic Gates, and Multiplexers. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
ALU_4bit/
│
├── ALU_4bit.v
│
├── ALU_4bit_TB.v
│
├── ALU_4bit_Waveform.png
│
└── ALU_4bit_RTL.png
```

## Module Description

The 4-Bit ALU performs arithmetic and logical operations on two 4-bit operands. The desired operation is selected using a 3-bit opcode.

### Inputs

* `a[3:0]` – First 4-bit operand
* `b[3:0]` – Second 4-bit operand
* `carry_in` – Carry/Borrow input
* `opcode[2:0]` – Operation select

### Outputs

* `result[3:0]` – 4-bit operation result
* `carry_out` – Carry/Borrow output

---

## Supported Operations

| Opcode | Operation       |
| :----: | --------------- |
|  `000` | Addition        |
|  `001` | Subtraction     |
|  `010` | AND             |
|  `011` | OR              |
|  `100` | NOT (Operand A) |
|  `101` | NAND            |
|  `110` | NOR             |
|  `111` | XOR             |

---

## Design Architecture

The ALU is built using a **hierarchical and modular design** by integrating the following modules:

* 4 × Full Adders
* 4 × Full Subtractors
* 4 × AND/OR/NOT Gate Modules
* 4 × NAND/NOR/XOR Gate Modules
* 5 × 8×1 Multiplexers

  * Four multiplexers select the result bits.
  * One multiplexer selects the carry/borrow output.

---

## Testbench

The testbench verifies all ALU operations by applying a fixed pair of operands while changing the opcode.

| Time (ns) | Opcode | Operation   |
| --------- | :----: | ----------- |
| 0         |  `000` | Addition    |
| 5         |  `001` | Subtraction |
| 10        |  `010` | AND         |
| 15        |  `011` | OR          |
| 20        |  `100` | NOT (A)     |
| 25        |  `101` | NAND        |
| 30        |  `110` | NOR         |
| 35        |  `111` | XOR         |

Simulation Inputs:

* `a = 0101`
* `b = 0010`
* `carry_in = 0`

The simulation ends automatically after **50 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct functionality of all supported ALU operations.

---

## Modeling Style

* **Gate-Level Modeling**
* **Hierarchical Modular Design**
* Verilog gate primitives used:

  * `and`
  * `or`
  * `not`
  * `xor`
  * `nand`
  * `nor`
  * `xnor`

---

## Learning Outcomes

After completing this project, you will understand:

* Arithmetic Logic Unit (ALU) architecture
* Hierarchical RTL design
* Module reuse in digital design
* Ripple Carry Addition
* Ripple Borrow Subtraction
* Multiplexer-based operation selection
* Gate-Level Modeling in Verilog
* Functional simulation
* Waveform verification
* RTL schematic generation

---

## Tools Used

* Xilinx Vivado
* Verilog HDL
* XSim Simulator

---

## Project Highlights

* Designed using reusable RTL modules
* Supports **8 arithmetic and logical operations**
* Implements operation selection using **8×1 Multiplexers**
* Demonstrates hierarchical hardware design methodology
* Verified through functional simulation and RTL schematic generation

---

**Day 7 – Weekly Project | 50 Days VLSI Challenge**
