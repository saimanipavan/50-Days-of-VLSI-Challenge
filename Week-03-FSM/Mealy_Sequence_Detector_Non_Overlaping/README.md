# Mealy Sequence Detector (Non-Overlapping)

## Overview

This folder contains the Verilog implementation of a **Mealy Sequence Detector** using **Behavioral Modeling**. The detector identifies the binary sequence **101101** from a serial input stream and operates in **non-overlapping mode**.

Unlike overlapping sequence detectors, once a valid sequence is detected, the FSM returns to the initial state and starts searching for a new sequence from the beginning.

The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
Mealy_Sequence_Detector_Non_Overlaping/
│
├── Mealy_Sequence_Detector_Non_Overlaping.v
│
├── Mealy_Sequence_Detector_Non_Overlaping_TB.v
│
├── Mealy_Sequence_Detector_Non_Overlaping_Waveform.png
│
└── Mealy_Sequence_Detector_Non_Overlaping_RTL.png
```

## Module Description

A **Mealy Sequence Detector** is a Finite State Machine (FSM) whose output depends on both the current state and the current input.

This detector identifies the sequence:

```text
101101
```

The design uses **non-overlapping detection**, meaning that after detecting a valid sequence, the FSM returns to the IDLE state and begins searching for the next occurrence from scratch.

An **active-low asynchronous reset (`rst_n`)** initializes the FSM to the IDLE state.

### Inputs

* `clk`
* `rst_n`
* `in`

### Outputs

* `out`

---

## State Description

|  State  | Sequence Detected |
| :-----: | ----------------- |
|   IDLE  | None              |
|   S_1   | 1                 |
|   S_10  | 10                |
|  S_101  | 101               |
|  S_1011 | 1011              |
| S_10110 | 10110             |

---

## Sequence Detection

### Target Sequence

```text
101101
```

### Detection Logic

The output becomes HIGH when the FSM is in state `S_10110` and receives the final input bit `1`.

```verilog
assign out = (cur_state == S_10110 && in == 1'b1);
```

After detection, the FSM transitions back to the `IDLE` state.

---

## Non-Overlapping Detection

Example:

```text
Input Stream:
101101101101
```

Detected Sequence:

```text
101101101101
^^^^^^
```

After detecting the first occurrence of `101101`, the FSM resets to the IDLE state and does not reuse any previously matched bits. Therefore, overlapping matches are not considered.

---

## Implementation

The sequence detector is implemented using:

* Mealy FSM Architecture
* Behavioral Modeling
* State Encoding
* Combinational Next-State Logic
* Sequential State Register
* Non-Overlapping Sequence Detection
* Active-Low Asynchronous Reset

---

## Testbench

The testbench generates a clock, applies reset, and feeds different serial input patterns to verify sequence detection functionality.

| Time (ns)         | Operation                    |
| ----------------- | ---------------------------- |
| 0                 | Reset asserted (`rst_n = 0`) |
| 24                | Reset released (`rst_n = 1`) |
| After Reset       | Serial input stream applied  |
| During Simulation | Sequence detection verified  |
| 100               | Simulation ends              |

The clock toggles every **2 ns**, resulting in a **4 ns clock period**.

The simulation ends automatically after **100 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify correct state transitions, sequence recognition, non-overlapping detection, output generation, and reset functionality.

---

## Modeling Style

* **Behavioral Modeling**
* Mealy Finite State Machine (FSM)
* Sequential State Register
* Combinational Next-State Logic
* Non-blocking Assignments (`<=`)
* Continuous Output Assignment

---

## Learning Outcomes

After completing this project, you will understand:

* Mealy FSM Design
* Sequence Detection
* Non-Overlapping Pattern Detection
* State Encoding
* State Transition Logic
* Behavioral Modeling in Verilog
* Active-Low Asynchronous Reset
* Writing Verilog Testbenches
* Functional Simulation
* Waveform Analysis
* RTL Schematic Generation

---

## Tools Used

* Xilinx Vivado
* Verilog HDL
* XSim Simulator

---

**Day 15 – Week 3 – 50 Days VLSI Challenge**
