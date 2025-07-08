# 🚦 SmartTrafficFSM– Verilog Project

This project implements a 3-state traffic light controller using a Finite State Machine in Verilog.  
It cycles through RED, GREEN, and YELLOW lights using a timer-based transition system.

## 🛠️ Technologies Used
- Verilog HDL
- Vivado ML Standard
- Vivado Simulator
- RTL Viewer & Waveform Tools

## 🔄 FSM States
- **RED**: 5 cycles  
- **GREEN**: 4 cycles  
- **YELLOW**: 2 cycles

## 📁 Project Files
- `traffic_light.v` – Main FSM module
- `tb_traffic_light.v` – Testbench
- `traffic_light.xdc` – Constraints file (optional)
- `waveform.png` – Simulated waveform
- `schematic.png` – RTL schematic


## ✅ Simulation
Run behavioral simulation in Vivado to see light transitions and FSM state behavior.

---

Feel free to fork or improve this design!
