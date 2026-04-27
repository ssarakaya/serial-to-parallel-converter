# 4-bit Serial-to-Parallel Converter

This project implements a **4-bit Serial-to-Parallel Converter** using the **Verilog Hardware Description Language (HDL)**. The system receives serial data as input and converts it into a 4-bit parallel output using a shift register structure.

This project was developed as part of the **Computer Architecture and Organization** course assignment.

---

# Project Description

In digital systems, data can be transmitted in two main ways: **serial communication** and **parallel communication**.

Serial communication sends data **one bit at a time through a single line**, while parallel communication sends **multiple bits simultaneously using multiple lines**.

In many digital systems, it is necessary to convert serial data into parallel form so that it can be processed by hardware components more efficiently.

In this project, a **Serial-to-Parallel Converter** is designed and implemented using Verilog. The system collects incoming serial bits and stores them in a **4-bit shift register**, producing a parallel output.

---

# Digital Design

The digital design of this system is based on a **4-bit shift register**.

The shift register shifts its stored bits at every clock cycle and inserts the new serial input bit into the register.

## Inputs

- **clk** – Clock signal controlling the shifting operation
- **reset** – Clears the shift register
- **serial_in** – Serial data input

## Output

- **parallel_out[3:0]** – 4-bit parallel output

At each positive edge of the clock signal:

1. Existing bits shift one position.
2. The new serial input bit enters the register.
3. After four clock cycles, the register contains four bits and produces the parallel output.

---

# Verilog Implementation

The hardware module was implemented using **Verilog HDL**.

The shift operation is implemented inside an **always block** triggered by the positive edge of the clock signal.

If the **reset signal** is active, the register is cleared. Otherwise, the register shifts and the new serial input bit is stored.

Main module file:

serial_to_parallel.v

---

# Testbench

A **Verilog testbench** was written to verify the correct functionality of the design.

Testbench file:

serial_to_parallel_tb.v

The testbench generates:

- clock signal
- reset signal
- serial input sequence

During simulation, the serial input values are applied to the module and the resulting parallel output is observed.

---

# Simulation

The design was simulated and verified using **GTKWave**.

The waveform displays:

- clock signal
- reset signal
- serial input
- parallel output

The simulation results confirm that the serial bits are correctly shifted into the register and converted into a 4-bit parallel output.

---

# Project Files

serial_to_parallel.v  
Verilog module implementing the Serial-to-Parallel Converter.

serial_to_parallel_tb.v  
Testbench used for simulation.

wave.vcd  
Simulation waveform file generated during testing.

report.pdf  
Assignment report including design explanation and simulation results.

---

# Tools and Technologies

- Verilog Hardware Description Language (HDL)
- GTKWave waveform viewer
- GitHub for version control

---

# Author

Sara Kaya  
Computer Engineering Student
