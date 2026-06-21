# SISO (Serial-In Serial-Out) Shift Register

## Overview

This folder contains the Verilog implementation of a **4-Bit Serial-In Serial-Out (SISO) Shift Register** using **Behavioral Modeling**. The register accepts serial data at its input and shifts the stored data one bit position on every rising edge of the clock. The shifted data is available at the serial output.

The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
SISO_Shift_reg/
│
├── SISO_Shift_reg.v
│
├── SISO_Shift_reg_TB.v
│
├── SISO_Shift_reg_Waveform.png
│
└── SISO_Shift_reg_RTL.png
```

## Module Description

A **Serial-In Serial-Out (SISO) Shift Register** is a sequential circuit used to store and transfer data serially.

At every positive edge of the clock:

* The new serial input bit enters the most significant position.
* Existing bits shift one position toward the least significant bit.
* The least significant bit becomes the serial output.

An **active-low asynchronous reset (`rst_n`)** clears all register contents.

### Inputs

* `clk`
* `rst_n`
* `serial_in`

### Outputs

* `serial_out`

---

## Shift Operation

Register update:

```verilog
shift_reg <= {serial_in, shift_reg[3:1]};
```

Output:

```verilog
serial_out = shift_reg[0];
```

---

## Example Data Shift

Assume the following serial input sequence:

```text
1 → 0 → 1 → 0
```

Register contents after each clock edge:

| Clock Edge | Shift Register |
| :--------: | :------------: |
|    Reset   |      0000      |
|      1     |      1000      |
|      2     |      0100      |
|      3     |      1010      |
|      4     |      0101      |

Serial output appears from the least significant bit after the data propagates through the register.

---

## Implementation

The shift register is implemented using:

* 4-bit register
* Behavioral Modeling
* Positive-edge triggered clock
* Active-low asynchronous reset
* Serial data shifting

---

## Testbench

The testbench generates a clock, applies reset, and provides a serial bit stream to verify shifting behavior.

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

These verify correct serial data loading, shifting operation, output generation, and reset functionality.

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
* Serial data transfer
* Serial-In Serial-Out (SISO) architecture
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
