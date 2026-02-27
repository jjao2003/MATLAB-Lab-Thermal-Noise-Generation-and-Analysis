
%% MATLAB Lab Experiment
% Thermal Noise Generation and Analysis
% Savonia UAS - IoT

clear; clc; close all;

%% PARAMETERS
k = 1.38e-23;          % Boltzmann constant (J/K)
T = 300;               % Temperature (Kelvin)
R = 1000;              % Resistance (Ohms)
B = 1e6;               % Bandwidth (Hz)

fs = 10e6;             % Sampling frequency (Hz)
duration = 0.01;       % Signal duration (seconds)
t = 0:1/fs:duration-1/fs;

%% THERMAL NOISE VOLTAGE (RMS)
Vrms = sqrt(4*k*T*R*B);
fprintf('Calculated RMS Noise Voltage: %.3e V\n', Vrms);

%% GENERATE THERMAL NOISE (Gaussian)
noise = Vrms * randn(size(t));

%% TIME DOMAIN PLOT
figure;
plot(t(1:1000), noise(1:1000));
title('Thermal Noise - Time Domain');
xlabel('Time (s)');
ylabel('Voltage (V)');
grid on;

%% POWER SPECTRAL DENSITY (PSD)
[psd_values, f] = pwelch(noise, [], [], [], fs);

figure;
plot(f, 10*log10(psd_values));
title('Power Spectral Density of Thermal Noise');
xlabel('Frequency (Hz)');
ylabel('PSD (dB/Hz)');
grid on;

%% STATISTICS
mean_noise = mean(noise);
std_noise = std(noise);

fprintf('Mean of Noise: %.3e V\n', mean_noise);
fprintf('Standard Deviation: %.3e V\n', std_noise);

%% SAVE DATA
save('thermal_noise_data.mat', 'noise', 't', 'psd_values', 'f');
