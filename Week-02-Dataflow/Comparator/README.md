# 4-Bit Comparator

## Overview

This folder contains the Verilog implementation of a **4-Bit Comparator** using **Dataflow Modeling**. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
Comparator/
│
├── Comparator_4bit.v
│
├── Comparator_4bit_TB.v
│
├── Comparator_4bit_Waveform.png
│
└── Comparator_4bit_RTL.png
```

## Module Description

A **4-Bit Comparator** is a combinational logic circuit that compares two 4-bit binary numbers and determines whether:

* `a` is greater than `b`
* `a` is equal to `b`
* `a` is less than `b`

Only one output is asserted HIGH for any valid input combination.

### Inputs

* `a[3:0]`
* `b[3:0]`

### Outputs

* `a_gt_b`
* `a_eq_b`
* `a_lt_b`

---

## Comparison Logic

* **a_gt_b** = `1` if `a > b`
* **a_eq_b** = `1` if `a == b`
* **a_lt_b** = `1` if `a < b`

The implementation uses Verilog relational operators:

```verilog
assign a_gt_b = a > b;
assign a_eq_b = a == b;
assign a_lt_b = a < b;
```

---

## Testbench

The testbench applies different combinations of input values to verify all comparison conditions.

| Time (ns) | a      | b      | Result  |
| --------- | ------ | ------ | ------- |
| 0         | `1111` | `0000` | `a > b` |
| 10        | `0000` | `1111` | `a < b` |
| 20        | `0000` | `0000` | `a = b` |
| 30        | `1111` | `1111` | `a = b` |

The simulation ends automatically after **50 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct operation of the 4-Bit Comparator.

---

## Modeling Style

* **Dataflow Modeling**
* Verilog continuous assignments (`assign`)
* Relational operators:

  * Greater than (`>`)
  * Equal to (`==`)
  * Less than (`<`)

---

## Learning Outcomes

After completing this project, you will understand:

* Comparator operation
* 4-bit binary number comparison
* Dataflow Modeling in Verilog
* Continuous assignment (`assign`)
* Relational operators in Verilog
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
