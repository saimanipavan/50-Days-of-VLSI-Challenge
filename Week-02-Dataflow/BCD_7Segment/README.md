# BCD to 7-Segment Display Decoder

## Overview

This folder contains the Verilog implementation of a **BCD to 7-Segment Display Decoder** using **Dataflow Modeling**. The design converts a 4-bit Binary Coded Decimal (BCD) input into the corresponding 7-segment display pattern. The implementation is verified using a dedicated testbench, and the simulation waveform along with the RTL schematic are included.

## Folder Contents

```text
BCD_7Segment/
│
├── BCD_7Segment.v
│
├── BCD_7Segment_TB.v
│
├── BCD_7Segment_Waveform.png
│
└── BCD_7Segment_RTL.png
```

## Module Description

A **BCD to 7-Segment Display Decoder** converts a **4-bit BCD input (0–9)** into the corresponding **7-bit output** required to drive a seven-segment display.

For invalid BCD inputs (`1010`–`1111`), all display segments are turned OFF.

### Inputs

* `bcd[3:0]`

### Outputs

* `seg[6:0]`

---

## BCD to 7-Segment Mapping

|   BCD Input   | Decimal | Segment Output (`seg`) |
| :-----------: | :-----: | :--------------------: |
|     `0000`    |    0    |        `0111111`       |
|     `0001`    |    1    |        `0000110`       |
|     `0010`    |    2    |        `1011011`       |
|     `0011`    |    3    |        `1001111`       |
|     `0100`    |    4    |        `1100110`       |
|     `0101`    |    5    |        `1101101`       |
|     `0110`    |    6    |        `1111101`       |
|     `0111`    |    7    |        `0000111`       |
|     `1000`    |    8    |        `1111111`       |
|     `1001`    |    9    |        `1101111`       |
| `1010`–`1111` | Invalid |        `0000000`       |

---

## Implementation

The decoder is implemented using **nested conditional (ternary) operators** with continuous assignment.

```verilog
assign seg = (bcd == 4'b0000) ? 7'b0111111 :
             (bcd == 4'b0001) ? 7'b0000110 :
             ...
             (bcd == 4'b1001) ? 7'b1101111 :
                                7'b0000000;
```

---

## Testbench

The testbench applies all possible 4-bit input combinations (`0000`–`1111`) to verify the decoder operation.

| Time (ns) | BCD Input |
| --------- | --------- |
| 0         | `0000`    |
| 5         | `0001`    |
| 10        | `0010`    |
| ...       | ...       |
| 45        | `1001`    |
| 50        | `1010`    |
| 55        | `1011`    |
| 60        | `1100`    |
| 65        | `1101`    |
| 70        | `1110`    |
| 75        | `1111`    |

The simulation ends automatically after **80 ns**.

---

## Simulation Results

The folder includes:

* RTL source code
* Testbench
* Simulation waveform
* RTL schematic

These verify the correct conversion of valid BCD inputs (0–9) to their corresponding 7-segment display patterns and ensure invalid inputs result in all segments being OFF.

---

## Modeling Style

* **Dataflow Modeling**
* Verilog continuous assignment (`assign`)
* Nested conditional (ternary) operator (`?:`)
* Equality operator (`==`)

---

## Learning Outcomes

After completing this project, you will understand:

* BCD representation
* Seven-segment display interfacing
* BCD to 7-segment decoding
* Dataflow Modeling in Verilog
* Continuous assignment (`assign`)
* Nested ternary operators
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
