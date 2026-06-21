# PISO (Parallel-In Serial-Out) Shift Register

## Overview

This folder contains the Verilog implementation of a **4-Bit Parallel-In Serial-Out (PISO) Shift Register** using **Behavioral Modeling**. The register loads parallel data when enabled and then shifts the data out serially on successive clock cycles.

The design is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
PISO_Shift_reg/
│
├── PISO_Shift_reg.v
│
├── PISO_Shift_reg_TB.v
│
├── PISO_Shift_reg_Waveform.png
│
└── PISO_Shift_reg_RTL.png
```

## Module Description

A **Parallel-In Serial-Out (PISO) Shift Register** converts parallel data into serial data.

The register operates in two modes:

1. **Load Mode**

   * When `load_en = 1`, the parallel input data is loaded into the register.

2. **Shift Mode**

   * When `load_en = 0`, the register shifts its contents toward the least significant bit.
   * The least significant bit appears at the serial output.

An **active-low asynchronous reset (`rst_n`)** clears the register contents.

### Inputs

* `clk`
* `rst_n`
* `load_en`
* `parallel_in[3:0]`

### Outputs

* `serial_out`

---

## Shift Operation

### Parallel Load

```verilog
shift_reg <= parallel_in;
```

### Serial Shift

```verilog
shift_reg <= {1'b0, shift_reg[3:1]};
```

### Serial Output

```verilog
serial_out = shift_reg[0];
```

---

## Example Operation

Assume:

```text
parallel_in = 1010
```

After loading:

| Clock Cycle | Shift Register | Serial Output |
| :---------: | :------------: | :-----------: |
|     Load    |      1010      |       0       |
|      1      |      0101      |       1       |
|      2      |      0010      |       0       |
|      3      |      0001      |       1       |
|      4      |      0000      |       0       |

The parallel data is transmitted one bit at a time through the serial output.

---

## Implementation

The shift register is implemented using:

* 4-bit register
* Behavioral Modeling
* Parallel data loading
* Serial data shifting
* Positive-edge triggered clock
* Active-low asynchronous reset

---

## Testbench

The testbench generates a clock, applies reset, loads multiple parallel values, and verifies serial shifting operation.

| Time (ns) | Operation                    |
| --------- | ---------------------------- |
| 0         | Reset asserted (`rst_n = 0`) |
| 10        | `load_en = 1`                |
| 20        | Reset released (`rst_n = 1`) |
| 24        | Load `1111`                  |
| 28        | Shift operation begins       |
| 40        | Load `1010`                  |
| 44        | Shift operation resumes      |
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

These verify correct parallel loading, serial shifting, output generation, and reset functionality.

---

## Modeling Style

* **Behavioral Modeling**
* Register-based implementation
* Edge-triggered sequential logic
* Non-blocking assignments (`<=`)
* Conditional control logic
* Concatenation operator (`{}`)

---

## Learning Outcomes

After completing this project, you will understand:

* Shift Register operation
* Parallel-to-Serial data conversion
* Parallel-In Serial-Out (PISO) architecture
* Parallel loading mechanism
* Serial data transmission
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

**Day 14 – Week 2 – 50 Days VLSI Challenge**
