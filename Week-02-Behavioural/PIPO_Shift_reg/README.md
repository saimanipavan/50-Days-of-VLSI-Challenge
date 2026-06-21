# PIPO (Parallel-In Parallel-Out) Register

## Overview

This folder contains the Verilog implementation of a **4-Bit Parallel-In Parallel-Out (PIPO) Register** using **Behavioral Modeling**. The register loads parallel data on the rising edge of the clock when enabled and makes the stored data available simultaneously at the output.

The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
PIPO_Shift_reg/
│
├── PIPO_Shift_reg.v
│
├── PIPO_Shift_reg_TB.v
│
├── PIPO_Shift_reg_Waveform.png
│
└── PIPO_Shift_reg_RTL.png
```

## Module Description

A **Parallel-In Parallel-Out (PIPO) Register** is a storage element that loads and outputs all bits simultaneously.

The register operates in two modes:

1. **Load Mode**

   * When `load_en = 1`, the input data is loaded into the register on the next rising edge of the clock.

2. **Hold Mode**

   * When `load_en = 0`, the register retains its current value.

An **active-low asynchronous reset (`rst_n`)** clears the register contents.

### Inputs

* `clk`
* `rst_n`
* `load_en`
* `parallel_in[3:0]`

### Outputs

* `parallel_out[3:0]`

---

## Register Operation

### Load Data

```verilog
shift_reg <= parallel_in;
```

### Hold Data

```verilog
shift_reg <= shift_reg;
```

### Output Assignment

```verilog
parallel_out = shift_reg;
```

---

## Example Operation

Assume:

```text
parallel_in = 1010
```

| Clock Edge | load_en | Register Value |
| :--------: | :-----: | :------------: |
|    Reset   |    X    |      0000      |
|      1     |    1    |      1010      |
|      2     |    0    |      1010      |
|      3     |    1    |      1111      |
|      4     |    0    |      1111      |

The loaded data appears immediately at the parallel output after the clock edge.

---

## Implementation

The register is implemented using:

* 4-bit storage register
* Behavioral Modeling
* Parallel data loading
* Data hold functionality
* Positive-edge triggered clock
* Active-low asynchronous reset

---

## Testbench

The testbench generates a clock, applies reset, loads different parallel values, and verifies the register storage operation.

| Time (ns) | Operation                    |
| --------- | ---------------------------- |
| 0         | Reset asserted (`rst_n = 0`) |
| 10        | `load_en = 1`                |
| 20        | Reset released (`rst_n = 1`) |
| 24        | Load `1111`                  |
| 28        | Hold current value           |
| 40        | Load `1010`                  |
| 44        | Hold current value           |
| 68        | Reset asserted (`rst_n = 0`) |

The clock toggles every **2 ns**, resulting in a **4 ns clock period**.

The simulation ends automatically after **100 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify correct parallel data loading, storage, hold operation, output generation, and reset functionality.

---

## Modeling Style

* **Behavioral Modeling**
* Register-based implementation
* Edge-triggered sequential logic
* Non-blocking assignments (`<=`)
* Conditional control logic

---

## Learning Outcomes

After completing this project, you will understand:

* Register operation
* Parallel data storage
* Parallel-In Parallel-Out (PIPO) architecture
* Load and hold functionality
* Behavioral Modeling in Verilog
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

**Day 14 – Week 3 – 50 Days VLSI Challenge**
