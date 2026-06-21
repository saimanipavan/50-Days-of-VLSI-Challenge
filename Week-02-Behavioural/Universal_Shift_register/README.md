# Universal Shift Register

## Overview

This folder contains the Verilog implementation of a **4-Bit Universal Shift Register** using **Behavioral Modeling**. A Universal Shift Register is a versatile sequential circuit capable of performing multiple operations including **Hold**, **Shift Left**, **Shift Right**, and **Parallel Load**.

This project serves as the **Weekly Project of Week 3** and combines the concepts learned from SISO, SIPO, PISO, and PIPO shift registers into a single configurable design.

The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

---

## Folder Contents

```text
Universal_Shift_Register/
│
├── Universal_Shift_register.v
│
├── Universal_Shift_register_TB.v
│
├── Universal_Shift_Register_Waveform.png
│
└── Universal_Shift_Register_RTL.png
```

---

## Module Description

A **Universal Shift Register** can perform four different operations depending on the value of the control input `ctrl`.

### Inputs

* `clk`
* `rst_n`
* `ctrl[1:0]`
* `parallel_in[3:0]`
* `serial_left_in`
* `serial_right_in`

### Outputs

* `parallel_out[3:0]`

---

## Control Operations

| ctrl | Operation |
| :--: | --------- |
| `00` | Hold |
| `01` | Shift Right |
| `10` | Shift Left |
| `11` | Parallel Load |

---

## Functional Operation

### Hold

The register retains its current value.

```verilog
shift_reg <= shift_reg;
```

### Shift Right

Data shifts toward the LSB and new serial data enters from the left.

```verilog
shift_reg <= {serial_left_in, shift_reg[3:1]};
```

### Shift Left

Data shifts toward the MSB and new serial data enters from the right.

```verilog
shift_reg <= {shift_reg[2:0], serial_right_in};
```

### Parallel Load

Loads all bits simultaneously into the register.

```verilog
shift_reg <= parallel_in;
```

---

## Testbench

The testbench verifies all four operating modes of the Universal Shift Register.

### Simulation Conditions

| Time (ns) | Operation |
| --------- | --------- |
| 0 | Reset asserted (`rst_n = 0`) |
| 20 | Reset released (`rst_n = 1`) |
| Every 5 ns | `ctrl` changes |
| Every 2 ns | Clock toggles |

### Control Sequence

```text
00 → 01 → 10 → 11 → 00 → ...
```

The simulation ends automatically after **50 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct functionality of:

* Hold operation
* Shift Right operation
* Shift Left operation
* Parallel Load operation

---

## Modeling Style

* **Behavioral Modeling**
* Sequential Logic Design
* Case Statement Based Control
* Non-Blocking Assignments (`<=`)
* Active-Low Asynchronous Reset

---

## Learning Outcomes

After completing this project, you will understand:

* Universal Shift Register architecture
* Bidirectional shifting
* Parallel data loading
* Register hold functionality
* Behavioral Modeling in Verilog
* Case statement implementation
* Sequential circuit design
* Active-low asynchronous reset
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

## Weekly Project Highlight

The **Universal Shift Register** integrates the functionality of:

* SISO (Serial-In Serial-Out)
* SIPO (Serial-In Parallel-Out)
* PISO (Parallel-In Serial-Out)
* PIPO (Parallel-In Parallel-Out)

into a single configurable design controlled by a 2-bit control signal.

---

## Project Summary

* **4-Bit Universal Shift Register**
* **4 Operating Modes**
* **Bidirectional Shifting**
* **Parallel Loading**
* **Behavioral RTL Design**
* **Functional Verification Completed**

---

**Week 2 Project – Day 14 – 50 Days VLSI Challenge**

*"Combining multiple shift register architectures into a single configurable sequential circuit."*

---

## Author

**Vedula Sai Mani Pavan**