# SIPO (Serial-In Parallel-Out) Shift Register

## Overview

This folder contains the Verilog implementation of a **4-Bit Serial-In Parallel-Out (SIPO) Shift Register** using **Behavioral Modeling**. The register accepts serial data at its input and shifts the data through the register on every rising edge of the clock. The contents of the register are available simultaneously through a parallel output bus.

The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
SIPO_Shift_reg/
│
├── SIPO_Shift_reg.v
│
├── SIPO_Shift_reg_TB.v
│
├── SIPO_Shift_reg_Waveform.png
│
└── SIPO_Shift_reg_RTL.png
```

## Module Description

A **Serial-In Parallel-Out (SIPO) Shift Register** converts serial data into parallel data.

At every positive edge of the clock:

* A new bit is loaded through the serial input.
* Existing bits shift one position toward the least significant bit.
* The complete register contents are available at the parallel output.

An **active-low asynchronous reset (`rst_n`)** clears the register contents.

### Inputs

* `clk`
* `rst_n`
* `serial_in`

### Outputs

* `parallel_out[3:0]`

---

## Shift Operation

Register update:

```verilog
shift_reg <= {serial_in, shift_reg[3:1]};
```

Parallel output:

```verilog
parallel_out = shift_reg;
```

---

## Example Data Shift

Assume the following serial input sequence:

```text
1 → 0 → 1 → 0
```

Register contents after each clock edge:

| Clock Edge | Register Contents |
| :--------: | :---------------: |
|    Reset   |        0000       |
|      1     |        1000       |
|      2     |        0100       |
|      3     |        1010       |
|      4     |        0101       |

The entire register value is available through the parallel output bus.

---

## Implementation

The shift register is implemented using:

* 4-bit register
* Behavioral Modeling
* Positive-edge triggered clock
* Active-low asynchronous reset
* Serial data loading
* Parallel data output

---

## Testbench

The testbench generates a clock, applies reset, and provides a serial bit stream to verify shift register operation.

| Time (ns)   | Operation                          |
| ----------- | ---------------------------------- |
| 0           | Reset asserted (`rst_n = 0`)       |
| 20          | Reset released (`rst_n = 1`)       |
| After reset | Serial data sequence applied       |
| 50          | Reset asserted again (`rst_n = 0`) |

The clock toggles every **2 ns**, resulting in a **4 ns clock period**.

The simulation ends automatically after **100 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify correct serial data loading, shifting operation, parallel output generation, and reset functionality.

---

## Modeling Style

* **Behavioral Modeling**
* Register-based implementation
* Edge-triggered sequential logic
* Non-blocking assignments (`<=`)
* Concatenation operator (`{}`)

---

## Learning Outcomes

After completing this project, you will understand:

* Shift Register operation
* Serial-to-Parallel data conversion
* Serial-In Parallel-Out (SIPO) architecture
* Behavioral Modeling in Verilog
* Register manipulation using concatenation
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

**Day 14 – Week 2 – 50 Days VLSI Challenge**
