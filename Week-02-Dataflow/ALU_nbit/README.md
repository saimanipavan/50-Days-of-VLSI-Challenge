# Parameterized N-Bit ALU

## Overview

This folder contains the Verilog implementation of a **Parameterized N-Bit Arithmetic Logic Unit (ALU)** using **Dataflow Modeling**. The ALU supports arithmetic and logical operations selected through a 3-bit opcode. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
ALU_nbit/
│
├── ALU_nbit.v
│
├── ALU_nbit_TB.v
│
├── ALU_nbit_Waveform.png
│
└── ALU_nbit_RTL.png
```

## Module Description

The **N-Bit ALU** performs arithmetic and logical operations on two input operands. The bit width is configurable using the `Data_Width` parameter, making the design reusable for different operand sizes.

### Parameter

* `Data_Width = 4` (default)

### Inputs

* `a[Data_Width-1:0]`
* `b[Data_Width-1:0]`
* `carry_in`
* `opcode[2:0]`

### Outputs

* `result[Data_Width-1:0]`
* `carry_out`

---

## Supported Operations

| Opcode | Operation   | Description        |
| :----: | ----------- | ------------------ |
|  `000` | Addition    | `a + b + carry_in` |
|  `001` | Subtraction | `a - b - carry_in` |
|  `010` | AND         | `a & b`            |
|  `011` | OR          | `a \| b`           |
|  `100` | NOT         | `~a`               |
|  `101` | NAND        | `~(a & b)`         |
|  `110` | NOR         | `~(a \| b)`        |
|  `111` | XOR         | `a ^ b`            |

---

## Implementation

The ALU is implemented using **Dataflow Modeling** with nested conditional (ternary) operators and continuous assignments.

The arithmetic operations generate both the `result` and `carry_out`, while logical operations force the carry output to zero.

---

## Testbench

The testbench uses the following input values throughout the simulation:

* `a = 0101`
* `b = 0010`
* `carry_in = 0`

The opcode is changed every **5 ns** to verify each ALU operation.

| Time (ns) | Opcode | Operation   |
| --------- | :----: | ----------- |
| 0         |  `000` | Addition    |
| 5         |  `001` | Subtraction |
| 10        |  `010` | AND         |
| 15        |  `011` | OR          |
| 20        |  `100` | NOT         |
| 25        |  `101` | NAND        |
| 30        |  `110` | NOR         |
| 35        |  `111` | XOR         |

The simulation ends automatically after **50 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct execution of all arithmetic and logical operations supported by the ALU.

---

## Modeling Style

* **Dataflow Modeling**
* Parameterized module design
* Verilog continuous assignment (`assign`)
* Nested conditional (ternary) operator (`?:`)
* Arithmetic operators (`+`, `-`)
* Bitwise logical operators (`&`, `|`, `^`, `~`)
* Concatenation operator (`{}`)

---

## Learning Outcomes

After completing this project, you will understand:

* Parameterized module design in Verilog
* Arithmetic Logic Unit (ALU) architecture
* Dataflow Modeling
* Continuous assignment (`assign`)
* Nested ternary operators
* Arithmetic and logical operations
* Opcode-based operation selection
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

**Day 10 – Week 2 – 50 Days VLSI Challenge**
