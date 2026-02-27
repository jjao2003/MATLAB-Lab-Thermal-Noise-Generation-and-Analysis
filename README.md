# MATLAB Lab: Thermal Noise Generation and Analysis

## Author
Agozie Onuigbo  
Savonia University of Applied Sciences  
Bachelor of Information Technology (IoT)

---

## Objective
To simulate thermal noise and analyze its statistical and spectral properties using MATLAB.

---

## Theory
Thermal noise voltage:

Vrms = sqrt(4kTRB)

Where:
- k = Boltzmann constant
- T = Temperature
- R = Resistance
- B = Bandwidth

---

## Parameters Used
- Temperature: 300 K
- Resistance: 1000 Ω
- Bandwidth: 1 MHz
- Sampling Frequency: 10 MHz

---

## Results
- RMS Noise Voltage ≈ 1.29e-04 V
- Mean ≈ 0 V
- PSD shows flat white noise spectrum

---

## How to Run
1. Open MATLAB
2. Run `thermal_noise_analysis.m`
3. View generated plots

---

## Conclusion
Thermal noise behaves as Gaussian white noise with flat spectral density.
