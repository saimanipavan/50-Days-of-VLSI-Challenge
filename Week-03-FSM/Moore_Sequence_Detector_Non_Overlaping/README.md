# Moore Sequence Detector (Non-Overlapping)

## Overview

This folder contains the Verilog implementation of a **Moore Sequence Detector** using **Behavioral Modeling**. The detector identifies the binary sequence **101101** from a serial input stream and operates in **non-overlapping mode**.

In a Moore FSM, the output depends only on the current state. Therefore, an additional detection state is used to indicate successful sequence recognition. After detecting a valid sequence, the FSM starts searching for a new sequence without reusing the detected bits.

The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
Moore_Sequence_Detector_Non_Overlaping/
│
├── Moore_Sequence_Detector_Non_Overlaping.v
│
├── Moore_Sequence_Detector_Non_Overlaping_TB.v
│
├── Moore_Sequence_Detector_Non_Overlaping_Waveform.png
│
└── Moore_Sequence_Detector_Non_Overlaping_RTL.png
```

## Module Description

A **Moore Sequence Detector** is a Finite State Machine (FSM) whose output depends only on the current state.

This detector identifies the sequence:

```text
101101
```

The design uses **non-overlapping detection**, meaning that after a complete sequence is detected, the FSM begins searching for a new occurrence rather than extending the previously detected sequence.

An **active-low asynchronous reset (`rst_n`)** initializes the FSM to the IDLE state.

### Inputs

* `clk`
* `rst_n`
* `in`

### Outputs

* `out`

---

## State Description

|   State  | Sequence Detected |
| :------: | ----------------- |
|   IDLE   | None              |
|    S_1   | 1                 |
|   S_10   | 10                |
|   S_101  | 101               |
|  S_1011  | 1011              |
|  S_10110 | 10110             |
| S_101101 | 101101 (Detected) |

---

## Sequence Detection

### Target Sequence

```text
101101
```

### Detection Logic

The FSM enters the detection state after receiving the complete sequence.

```verilog
assign out = (cur_state == S_101101);
```

Since this is a Moore machine, the output becomes HIGH only after the FSM transitions into the detection state.

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

After detection, the FSM does not intentionally preserve the previously detected sequence for reuse. It resumes sequence searching from the next incoming bits.

---

## Moore vs Mealy Detection

| Feature                  | Moore FSM             | Mealy FSM             |
| ------------------------ | --------------------- | --------------------- |
| Output Depends On        | Current State         | Current State + Input |
| Detection State Required | Yes                   | No                    |
| Output Timing            | One Clock Cycle Later | Immediate             |
| Number of States         | More                  | Fewer                 |

For the sequence **101101**, the Moore implementation requires an additional state (`S_101101`) to generate the output.

---

## Implementation

The sequence detector is implemented using:

* Moore FSM Architecture
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
| 22                | Reset released (`rst_n = 1`) |
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
* Moore Finite State Machine (FSM)
* Sequential State Register
* Combinational Next-State Logic
* Non-blocking Assignments (`<=`)
* State-Based Output Logic

---

## Learning Outcomes

After completing this project, you will understand:

* Moore FSM Design
* Sequence Detection
* Non-Overlapping Pattern Detection
* State Encoding
* State Transition Logic
* Moore vs Mealy FSM Comparison
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
