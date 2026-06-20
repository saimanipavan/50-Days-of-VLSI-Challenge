# 4-Bit Asynchronous Up/Down Counter Using D Flip-Flops

## Overview

This folder contains the Verilog implementation of a **4-Bit Asynchronous (Ripple) Up/Down Counter** using **D Flip-Flops** and **Structural Modeling**. The counter can operate in either **up-count** or **down-count** mode based on a control signal. The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
UP_DOWN_COUNTER_4bit_Asyn_D_FF/
│
├── UP_DOWN_COUNTER_4bit_Asyn_D_FF.v
│
├── UP_DOWN_Counter_4bit_Asyn_D_FF_TB.v
│
├── UP_DOWN_COUNTER_4bit_Asyn_D_FF_Waveform.png
│
└── UP_DOWN_COUNTER_4bit_Asyn_D_FF_RTL.png
```

## Module Description

A **4-Bit Asynchronous Up/Down Counter** is a sequential circuit that counts in either ascending or descending order. The counting direction is selected using the `UP_DOWN` control signal.

The counter is implemented using **D Flip-Flops configured in toggle mode** by connecting `D = Q̅`. All flip-flops are connected in a ripple configuration, where the output of one stage serves as the clock for the next stage.

An **active-low asynchronous reset (`rst_n`)** initializes all flip-flops to `0`.

### Inputs

* `clk`
* `rst_n`
* `UP_DOWN`

### Outputs

* `out[3:0]`

---

## Counter Operation

| `UP_DOWN` | Mode         | Output                             |
| :-------: | ------------ | ---------------------------------- |
|    `0`    | Up Counter   | `{Q3, Q2, Q1, Q0}`                 |
|    `1`    | Down Counter | `{Q3_bar, Q2_bar, Q1_bar, Q0_bar}` |

---

## Counter Architecture

Each D Flip-Flop is configured as a T Flip-Flop:

```text
D = Q̅
```

Clock connections:

```text
FF0 Clock ← clk
FF1 Clock ← Q0_bar
FF2 Clock ← Q1_bar
FF3 Clock ← Q2_bar
```

Output selection:

```verilog
assign out = !UP_DOWN ?
             {Q3,Q2,Q1,Q0} :
             {Q3_bar,Q2_bar,Q1_bar,Q0_bar};
```

---

## Counting Sequence

### Up Count (`UP_DOWN = 0`)

```text
0000 → 0001 → 0010 → ... → 1111 → 0000
```

### Down Count (`UP_DOWN = 1`)

```text
1111 → 1110 → 1101 → ... → 0000 → 1111
```

---

## Implementation

The counter is implemented using:

* Four D Flip-Flops
* Structural Modeling
* Ripple-clock architecture
* D Flip-Flops configured in toggle mode (`D = Q̅`)
* Output multiplexing for Up/Down operation
* Active-low asynchronous reset

Since each flip-flop is clocked by the previous stage, propagation delay accumulates through the ripple chain.

---

## Testbench

The testbench generates a clock, applies reset, and changes the counting direction during simulation.

| Time (ns) | Operation                                              |
| --------- | ------------------------------------------------------ |
| 0         | Reset asserted (`rst_n = 0`), Up Count (`UP_DOWN = 0`) |
| 10        | Reset released (`rst_n = 1`)                           |
| 70        | `UP_DOWN = 1` (Down Count)                             |
| 130       | Reset asserted (`rst_n = 0`)                           |

The clock toggles every **2 ns**, resulting in a **4 ns clock period**.

The simulation ends automatically after **200 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* D Flip-Flop module
* Testbench
* Simulation waveform
* RTL schematic

These verify correct up-counting, down-counting, ripple operation, output selection, and asynchronous reset.

---

## Modeling Style

* **Structural Modeling**
* Hierarchical Design
* D Flip-Flop Instantiation
* Ripple Counter Architecture
* Continuous Assignment (`assign`)
* Conditional (Ternary) Operator (`?:`)
* Active-low Asynchronous Reset

---

## Learning Outcomes

After completing this project, you will understand:

* Asynchronous (Ripple) Counter operation
* Up/Down counter implementation
* Counter design using D Flip-Flops
* Flip-Flop toggling using `D = Q̅`
* Structural Verilog Modeling
* Hierarchical Design Methodology
* Ripple propagation delay
* Output selection using a control signal
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

**Day 13 – Week 2 – 50 Days VLSI Challenge**
