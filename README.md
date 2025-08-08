# 4bit_counter_using_Iverilog
# 4-bit Counter in Verilog

---

## 📝 Description

- **Design (`4_counter.v`)**: A 4-bit counter that increments on every rising edge of the clock.
- **Testbench (`tb_4_counter.v`)**: Generates the clock, applies reset, and records waveform data.
- **Waveform (`counter.vcd`)**: Generated during simulation, viewable in GTKWave.
<img width="1910" height="1015" alt="Screenshot 2025-08-07 215017" src="https://github.com/user-attachments/assets/f2a95b50-67cf-49a4-82c8-c2fce15f8167" />

---

## ⚙️ How to Run

### 1. Install Required Tools
- [Icarus Verilog](https://steveicarus.github.io/iverilog/) → For compiling and simulating Verilog code.
- [GTKWave](http://gtkwave.sourceforge.net/) → For viewing waveforms.

### 2. Compile the Design and Testbench
```bash
iverilog -o counter.out 4_counter.v tb_4_counter.v

### Run Simulation
vvp counter.out
###To veiw Waveform 
gtkwave counter.vcd
###Output Waveform



