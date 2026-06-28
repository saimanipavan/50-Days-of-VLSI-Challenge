# Smart Traffic Light Controller

## Overview

This project implements a **Smart Traffic Light Controller** using **Behavioral Modeling** in Verilog HDL. The controller manages traffic flow across four roads by combining a **Finite State Machine (FSM)** with **adaptive traffic sensing**, **programmable timers**, and **seven-segment countdown displays**.

Unlike a conventional fixed-time traffic signal, this design dynamically adjusts the green-light duration based on real-time vehicle density detected on the side roads.

The design is fully modular, verified through simulation, and suitable for FPGA implementation.

---

## Folder Contents

```text
Smart_Traffic_Light_Controller/
│
├── Smart_Traffic_Light_Controller.v
├── traffic_fsm.v
├── programmable_timer.v
├── timer_generator.v
├── adaptive_timer.v
├── sensor_interface.v
├── output_driver.v
├── seven_seg_driver.v
├── display_mux.v
├── binary_to_bcd.v
├── bcd_seven_seg_decoder.v
├── Smart_Traffic_Light_Controller_TB.v
├── Smart_Traffic_Controller_Waveform.png
├── Smart_Traffic_Controller_RTL.png
└── README.md
```

---

# Project Features

* Four-road traffic signal controller
* Adaptive traffic control using vehicle sensors
* Programmable countdown timer
* Green, Yellow and Red light sequencing
* Automatic road switching
* Four independent traffic signals
* Seven-segment countdown display
* Binary-to-BCD conversion
* Modular Verilog design
* Behavioral Modeling
* FPGA compatible implementation

---

# System Architecture

The controller is composed of the following modules:

## 1. Timer Generator

Generates a periodic timing pulse that acts as the one-second clock for the programmable timer.

### Features

* Clock divider
* Configurable timing period
* One-second pulse generation
* Active-low asynchronous reset

---

## 2. Programmable Timer

Provides countdown functionality for each traffic signal phase.

### Features

* Programmable countdown value
* Start signal
* Timer complete indication
* Remaining time output

### States

* IDLE
* LOAD_TIMER
* TIMER_RUNNING
* TIMER_DONE

---

## 3. Sensor Interface

Reads vehicle sensors placed on both side roads and determines traffic density.

### Inputs

* Side Road 1 Sensors
* Side Road 2 Sensors

### Outputs

* Traffic Density
* Road Request Signals

### Density Levels

| Sensors Active  | Density    |
| --------------- | ---------- |
| 000             | No Traffic |
| 001 / 010 / 100 | Low        |
| 011 / 101 / 110 | Medium     |
| 111             | High       |

---

## 4. Adaptive Timer

Calculates green-light duration according to traffic density.

| Density    | Green Time |
| ---------- | ---------: |
| No Traffic |        0 s |
| Low        |       10 s |
| Medium     |       20 s |
| High       |       30 s |

If adaptive mode is disabled, the controller uses a default fixed timing.

---

## 5. Traffic FSM

Controls the overall traffic signal sequence.

### States

| State   | Description                         |
| ------- | ----------------------------------- |
| IDLE    | Initialization                      |
| GREEN   | Active road receives green light    |
| YELLOW  | Transition state                    |
| ALL_RED | Safety delay before switching roads |

### Responsibilities

* Road selection
* Light control
* Timer loading
* Phase transitions
* Next-road selection

---

## 6. Output Driver

Generates the traffic light outputs for all four roads.

Each road supports:

* Green
* Yellow
* Red

Only one road is allowed to receive a green signal at any time.

---

## 7. Seven Segment Display Driver

Displays the remaining countdown time for the active road.

Modules included:

* Binary to BCD Converter
* BCD to Seven Segment Decoder
* Display Multiplexer

Only the currently active road displays the countdown timer.

---

# Controller Operation

The traffic controller operates as follows:

1. System initializes after reset.
2. The FSM selects the active road.
3. Traffic density is measured using the side-road sensors.
4. The adaptive timer determines the green-light duration.
5. The programmable timer begins counting down.
6. When the timer expires, the signal changes from Green to Yellow.
7. After the yellow interval, all roads become Red briefly.
8. The controller switches to the next road.
9. The process repeats continuously.

---

# Inputs

| Signal                     | Description            |
| -------------------------- | ---------------------- |
| `clk`                      | System Clock           |
| `rst_n`                    | Active-Low Reset       |
| `en_adaptive`              | Enable Adaptive Timing |
| `side_line_1_sensors[2:0]` | Side Road 1 Sensors    |
| `side_line_2_sensors[2:0]` | Side Road 2 Sensors    |

---

# Outputs

### Traffic Lights

* `main_line_1_lights`
* `main_line_2_lights`
* `side_line_1_lights`
* `side_line_2_lights`

### Seven Segment Displays

* Main Line 1 (Tens & Ones)
* Main Line 2 (Tens & Ones)
* Side Line 1 (Tens & Ones)
* Side Line 2 (Tens & Ones)

---

# Testbench

The testbench performs the following operations:

* Generates the system clock
* Applies asynchronous reset
* Enables adaptive traffic mode
* Simulates different traffic densities
* Verifies traffic light sequencing
* Verifies programmable timer operation
* Verifies seven-segment display outputs
* Tests adaptive and fixed timing modes

The simulation runs for **4000 clock cycles** before terminating automatically.

---

# Simulation Results

The project includes:

* RTL Source Code
* Testbench
* Simulation Waveforms
* RTL Schematic

The simulation verifies:

* Correct FSM state transitions
* Adaptive green-time calculation
* Timer operation
* Traffic light sequencing
* Countdown display functionality
* Sensor interface operation
* Road switching logic

---

# Modeling Style

* Behavioral Modeling
* Finite State Machine (FSM)
* Modular Design
* Combinational Logic
* Sequential Logic
* Non-blocking Assignments (`<=`)
* Continuous Assignments (`assign`)

---

# Learning Outcomes

After completing this project, you will understand:

* Behavioral Modeling in Verilog
* Hierarchical Design
* Modular RTL Design
* Finite State Machine (FSM) Design
* Adaptive Traffic Control Algorithms
* Programmable Timers
* Clock Division
* Sensor Interfacing
* Binary-to-BCD Conversion
* Seven-Segment Display Driving
* Traffic Signal Control Logic
* Functional Simulation
* RTL Schematic Generation
* FPGA-Oriented Digital System Design

---

# Tools Used

* Xilinx Vivado
* Verilog HDL
* XSim Simulator

---

## Week 3 Final Project – 50 Days VLSI Challenge

**Project:** Smart Traffic Light Controller

This project integrates multiple Verilog modules into a complete digital system, demonstrating hierarchical RTL design, FSM-based control, adaptive timing, programmable countdown logic, sensor interfacing, and display driving. It serves as the capstone project for **Week 3** of the **50 Days VLSI Challenge**.
