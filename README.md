# JK Flip-Flop using Verilog

## Project Overview
This project implements a JK Flip-Flop in Verilog HDL. A JK Flip-Flop is a sequential circuit used for storing one bit of data. It eliminates the invalid state found in the SR Flip-Flop.

## Truth Table

| J | K | Q(next) | Operation |
|---|---|---------|-----------|
| 0 | 0 | Q       | No Change |
| 0 | 1 | 0       | Reset |
| 1 | 0 | 1       | Set |
| 1 | 1 | Q'      | Toggle |

## Files

- `jk_flipflop.v` – Verilog implementation
- `jk_flipflop_tb.v` – Testbench
- `simulation/` – Simulation results and waveform

## Software Used

- ModelSim / Vivado / Icarus Verilog
- GTKWave (optional)

## Expected Output

The output changes according to the JK Flip-Flop truth table:
- Hold
- Reset
- Set
- Toggle

## Author

Your Name