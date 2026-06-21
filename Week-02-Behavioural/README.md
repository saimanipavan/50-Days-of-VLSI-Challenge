# Week 3 – Sequential Logic Design (Behavioral Modeling)

## Overview

Week 3 of the **50 Days VLSI Challenge** focuses on **Sequential Logic Design** using **Verilog HDL** and **Behavioral Modeling**. Unlike combinational circuits, sequential circuits store and process information based on previous states and clock events.

Throughout the week, various latches, flip-flops, counters, and shift registers were designed, verified through simulation, and documented with RTL schematics and waveforms.

The week concludes with a **Universal Shift Register**, which integrates multiple shift register functionalities into a single configurable design.

---

## Week 3 Folder Structure

```text
Week-3-Sequential/
│
├── SR_Latch/
├── D_Latch/
├── JK_Latch/
├── T_Latch/
│
├── SR_FF/
├── D_FF/
├── JK_FF/
├── T_FF/
│
├── UP_Counter_4bit_Syn/
├── DOWN_Counter_4bit_Syn/
├── UP_DOWN_Counter_nbit_Syn/
├── Mod_n_UP_DOWN_COUNTER_Syn/
│
├── UP_Counter_4bit_Asyn_D_FF/
├── DOWN_Counter_4bit_Asyn_D_FF/
├── UP_DOWN_Counter_4bit_Asyn_D_FF/
│
├── SISO_Shift_reg/
├── SIPO_Shift_reg/
├── PISO_Shift_reg/
├── PIPO_Shift_reg/
│
├── Universal_Shift_Register/
│
└── README.md
```

---

## Projects Completed

### Day 11 – Latches and Flip-Flops

#### Latches

* SR Latch
* D Latch
* JK Latch
* T Latch

#### Flip-Flops

* SR Flip-Flop
* D Flip-Flop
* JK Flip-Flop
* T Flip-Flop

---

### Day 12 – Synchronous Counters

* 4-Bit Up Counter
* 4-Bit Down Counter
* N-Bit Up/Down Counter
* Mod-N Up/Down Counter

---

### Day 13 – Asynchronous Counters

* 4-Bit Asynchronous Up Counter
* 4-Bit Asynchronous Down Counter
* 4-Bit Asynchronous Up/Down Counter

---

### Day 14 – Shift Registers

* SISO (Serial-In Serial-Out) Shift Register
* SIPO (Serial-In Parallel-Out) Shift Register
* PISO (Parallel-In Serial-Out) Shift Register
* PIPO (Parallel-In Parallel-Out) Register

---

### Weekly Project

* Universal Shift Register

---

## Skills Covered

* Behavioral Modeling
* Sequential Logic Design
* State Storage Elements
* Latch Design
* Flip-Flop Design
* Synchronous Counter Design
* Asynchronous Counter Design
* Shift Register Design
* Parameterized RTL Design
* Clocked Sequential Logic
* Asynchronous Reset Design
* Testbench Development
* Functional Simulation
* Waveform Analysis
* RTL Schematic Generation

---

## Tools Used

* Xilinx Vivado
* Verilog HDL
* XSim Simulator

---

## Repository Structure

Each project contains:

* RTL Source Code
* Testbench
* Simulation Waveform
* RTL Schematic
* Project-Specific README

---

## Learning Outcomes

By the end of Week 3, the following concepts were implemented and verified:

### Storage Elements

* SR Latch
* D Latch
* JK Latch
* T Latch

### Edge-Triggered Sequential Circuits

* SR Flip-Flop
* D Flip-Flop
* JK Flip-Flop
* T Flip-Flop

### Counters

* Up Counter
* Down Counter
* Up/Down Counter
* Mod-N Counter
* Ripple Counter

### Shift Registers

* Serial-In Serial-Out (SISO)
* Serial-In Parallel-Out (SIPO)
* Parallel-In Serial-Out (PISO)
* Parallel-In Parallel-Out (PIPO)

### Integrated Design

* Universal Shift Register

---

## Weekly Project Highlight

The **Universal Shift Register** integrates the functionality of multiple shift register architectures into a single configurable module.

### Supported Operations

| Control | Operation |
|----------|-----------|
| `00` | Hold |
| `01` | Shift Right |
| `10` | Shift Left |
| `11` | Parallel Load |

This project demonstrates how reusable sequential building blocks can be combined into a flexible and scalable digital system.

---

## Week 3 Summary

* **20 RTL Modules** Implemented
* **20 Testbenches** Developed
* **Behavioral Modeling** Used Throughout
* **Functional Simulation** Completed for Every Design
* **RTL Schematics** Generated for All Modules
* **1 Integrated Weekly Project (Universal Shift Register)** Completed

---

**Week 2 – 50 Days VLSI Challenge**

*"Building memory, state, and timing into digital systems through sequential logic design."*

---

## Author

**Vedula Sai Mani Pavan**